.class Lio/github/hidroh/materialistic/UserActivity$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/UserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/UserActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/UserActivity;

    .line 87
    iput-object p1, p0, Lio/github/hidroh/materialistic/UserActivity$1;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 111
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 90
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$1;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarDim(Landroid/view/Window;Z)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$1;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$1;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarDim(Landroid/view/Window;Z)V

    .line 96
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$1;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 97
    nop

    .line 106
    :goto_0
    return-void
.end method
