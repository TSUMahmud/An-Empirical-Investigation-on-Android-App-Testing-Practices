.class Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;
.super Ljava/lang/Object;
.source "KeyDelegate.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/KeyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NestedScrollViewHelper"
.end annotation


# instance fields
.field private final mScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0
    .param p1, "nestedScrollView"    # Landroidx/core/widget/NestedScrollView;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 339
    return-void
.end method


# virtual methods
.method public scrollToNext()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollToPrevious()Z
    .locals 2

    .line 353
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 2

    .line 343
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 344
    return-void
.end method
