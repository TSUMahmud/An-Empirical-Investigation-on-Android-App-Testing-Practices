.class public Lio/github/hidroh/materialistic/widget/AppBarSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "AppBarSwipeRefreshLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field private mAppBar:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/AppBarSwipeRefreshLayout;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/AppBarSwipeRefreshLayout;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/AppBarSwipeRefreshLayout;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/AppBarSwipeRefreshLayout;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 60
    :cond_0
    invoke-super {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onDetachedFromWindow()V

    .line 61
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1
    .param p1, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p2, "i"    # I

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 66
    return-void
.end method
