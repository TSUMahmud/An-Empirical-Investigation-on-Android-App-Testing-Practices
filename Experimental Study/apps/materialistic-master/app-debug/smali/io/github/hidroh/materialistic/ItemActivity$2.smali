.class Lio/github/hidroh/materialistic/ItemActivity$2;
.super Ljava/lang/Object;
.source "ItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/ItemActivity;->bindFavorite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUndo:Z

.field final synthetic this$0:Lio/github/hidroh/materialistic/ItemActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/ItemActivity;

    .line 325
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClick$0(Lio/github/hidroh/materialistic/ItemActivity$2;Landroid/view/View;)V
    .locals 1
    .param p1, "v1"    # Landroid/view/View;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->mUndo:Z

    .line 342
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/ItemActivity;->mBookmark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 343
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 331
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v1, v0, Lio/github/hidroh/materialistic/ItemActivity;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v2, v0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {v1, v0, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 333
    const v0, 0x7f100188

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v1, v0, Lio/github/hidroh/materialistic/ItemActivity;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v2, v0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    const v0, 0x7f100187

    .line 338
    .local v0, "toastMessageResId":I
    :goto_0
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->mUndo:Z

    if-nez v1, :cond_1

    .line 339
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v1, v1, Lio/github/hidroh/materialistic/ItemActivity;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f10018a

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$2$gjgBJeHqACRDHhdNRdIj5YBCsiA;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$2$gjgBJeHqACRDHhdNRdIj5YBCsiA;-><init>(Lio/github/hidroh/materialistic/ItemActivity$2;)V

    .line 340
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 344
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 346
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity$2;->mUndo:Z

    .line 347
    return-void
.end method
