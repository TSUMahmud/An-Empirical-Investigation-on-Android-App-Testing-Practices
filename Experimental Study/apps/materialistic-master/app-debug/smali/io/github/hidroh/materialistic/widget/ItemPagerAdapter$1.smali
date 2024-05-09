.class Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;
.super Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.source "ItemPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->bind(Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

.field final synthetic val$genericFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic val$navigationFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;
    .param p2, "x0"    # Landroidx/viewpager/widget/ViewPager;

    .line 114
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iput-object p4, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$navigationFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p5, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$genericFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 127
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 128
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 129
    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/Scrollable;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/Scrollable;->scrollToTop()V

    .line 131
    :cond_0
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$navigationFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$genericFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->toggleFabs(ZLcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 119
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 120
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/LazyLoadFragment;

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->loadNow()V

    .line 123
    :cond_1
    return-void
.end method
