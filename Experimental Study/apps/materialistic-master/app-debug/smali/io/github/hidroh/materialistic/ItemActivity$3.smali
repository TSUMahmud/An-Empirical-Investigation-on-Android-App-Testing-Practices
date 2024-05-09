.class Lio/github/hidroh/materialistic/ItemActivity$3;
.super Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.source "ItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/ItemActivity;->bindData(Lio/github/hidroh/materialistic/data/WebItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/ItemActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ItemActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/ItemActivity;
    .param p2, "x0"    # Landroidx/viewpager/widget/ViewPager;

    .line 402
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemActivity$3;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 405
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$3;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/ItemActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 406
    return-void
.end method
