# Scroll Architecture Task

A Flutter application implementing a Daraz-style product listing with a single-scroll architecture and custom horizontal navigation.

## Features
- **Collapsible Header**: Banner and search bar that collapse as you scroll.
- **Sticky Tab Bar**: Remains pinned at the top once the header is out of view.
- **Single Scroll View**: Exactly one `CustomScrollView` owns all vertical scrolling across all tabs.
- **Horizontal Navigation**: Tab switching via tapping or custom horizontal swipe gestures.
- **FakeStore API**: Integration for real-time products and user profile.
- **Auth Flow**: Simple login and profile view.

## Mandatory Explanation

### 1. How horizontal swipe was implemented
Horizontal swipe is implemented using a `GestureDetector` that wraps the entire `CustomScrollView`. 
- We track the start position of a drag in `onHorizontalDragStart`.
- In `onHorizontalDragUpdate`, we calculate the horizontal delta.
- If the delta exceeds a threshold (e.g., 50 logical pixels), we trigger the `TabController.animateTo` method to switch tabs.
- This approach avoids using `TabBarView` or `PageView`, which would introduce nested scrollables and gesture conflicts with the vertical scroll.

### 2. Who owns the vertical scroll and why
The **`CustomScrollView`** in `ProductListingPage` owns the vertical scroll.
- **Why?** To satisfy the constraint of having exactly ONE vertical scrollable. By using Slivers (`SliverAppBar`, `SliverPersistentHeader`, and `SliverToBoxAdapter`/`SliverList`), we ensure that the entire page content exists within a single scroll context.
- This prevents "scroll jitter" and ensures that the `RefreshIndicator` and sticky header work predictably regardless of which tab is active.

### 3. Trade-offs or limitations of your approach
- **Memory Usage**: Since we use an `IndexedStack` or conditional building within a `SliverToBoxAdapter` to maintain scroll position, all tabs' content is technically part of the same sliver if built together. While we lazy-load data via Bloc, the widget tree for the product lists of all tabs can grow.
- **Swipe Physics**: The horizontal swipe is custom-mapped to tab changes rather than having the native "overscroll" or "lazy-page-view" feel of a `PageView`. However, this is a necessary trade-off to maintain a purely single-scroll vertical architecture without nested scrollable conflicts.

