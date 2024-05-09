.class Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteRecyclerViewAdapter.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPendingClear:Z

.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    .line 65
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onActionItemClicked$0(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;Landroidx/appcompat/view/ActionMode;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->mPendingClear:Z

    .line 89
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->removeSelection()V

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 91
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 82
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a0

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 84
    invoke-interface {v1, v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f100049

    .line 85
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$1$P7mi_uTy1ITrNvOrUN58S0DeXH8;

    invoke-direct {v2, p0, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$1$P7mi_uTy1ITrNvOrUN58S0DeXH8;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;Landroidx/appcompat/view/ActionMode;)V

    .line 86
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 92
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900b7

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->refreshSelection()V

    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onOptionsMenuCreated(Landroid/view/Menu;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;->stopActionMode()V

    .line 110
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->mPendingClear:Z

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->mPendingClear:Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 115
    :goto_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 77
    const/4 v0, 0x0

    return v0
.end method
