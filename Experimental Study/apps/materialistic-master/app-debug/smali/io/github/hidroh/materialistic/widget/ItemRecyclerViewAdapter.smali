.class public abstract Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;
.source "ItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$VoteCallback;,
        Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;,
        Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;,
        Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;",
        ">",
        "Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field private static final DURATION_PER_LINE_MILLIS:I = 0x14

.field private static final PROPERTY_MAX_LINES:Ljava/lang/String; = "maxLines"


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCacheMode:I

.field private mCardBackgroundColorResId:I

.field private mCardHighlightColorResId:I

.field private mContentMaxLines:I

.field private mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLineCounted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLineHeight:F

.field mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSecondaryTextColorResId:I

.field private mTertiaryTextColorResId:I

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/ItemManager;)V
    .locals 1
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;

    .line 77
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mContentMaxLines:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineCounted:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCacheMode:I

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineHeight:F

    .line 78
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 79
    return-void
.end method

.method private bindActions(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lio/github/hidroh/materialistic/data/Item;",
            ")V"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isDead()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;

    invoke-direct {v1, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void
.end method

.method private decorateDead(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lio/github/hidroh/materialistic/data/Item;",
            ")V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isDead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mSecondaryTextColorResId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mTertiaryTextColorResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method private highlightUserItem(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lio/github/hidroh/materialistic/data/Item;",
            ")V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 199
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    .local v0, "highlight":Z
    :goto_0
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCardHighlightColorResId:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCardBackgroundColorResId:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    return-void
.end method

.method public static synthetic lambda$bind$0(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 161
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 165
    .local v0, "count":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineCounted:Ljava/util/Map;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->toggleCollapsibleContent(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;I)V

    .line 167
    return-void
.end method

.method public static synthetic lambda$bindActions$3(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V
    .locals 4
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "v"    # Landroid/view/View;

    .line 234
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 235
    const v1, 0x7f0d0002

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;

    invoke-direct {v1, p0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V

    .line 236
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 234
    return-void
.end method

.method public static synthetic lambda$null$2(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 237
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900a9

    if-ne v0, v2, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->vote(Lio/github/hidroh/materialistic/data/Item;)V

    .line 239
    return v1

    .line 241
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a4

    if-ne v0, v2, :cond_1

    .line 242
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    .line 243
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    .line 244
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    return v1

    .line 247
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a8

    if-ne v0, v2, :cond_5

    .line 248
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 249
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 250
    :goto_0
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 251
    :cond_3
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getDisplayedText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 252
    :cond_4
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getDisplayedText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    :goto_1
    invoke-static {v0, v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v1

    .line 255
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$toggleCollapsibleContent$1(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .param p3, "lineCount"    # I
    .param p4, "v"    # Landroid/view/View;

    .line 219
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/data/Item;->setContentExpanded(Z)V

    .line 220
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v1, p2, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    const-string v2, "maxLines"

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput p3, v0, v3

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mContentMaxLines:I

    sub-int v1, p3, v1

    mul-int/lit8 v1, v1, 0x14

    int-to-long v1, v1

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 224
    return-void
.end method

.method private load(ILio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "adapterPosition"    # I
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 186
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/github/hidroh/materialistic/data/Item;->setLocalRevision(I)V

    .line 187
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCacheMode:I

    new-instance v3, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;

    invoke-direct {v3, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Item;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 189
    return-void
.end method

.method private toggleCollapsibleContent(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;I)V
    .locals 6
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "lineCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lio/github/hidroh/materialistic/data/Item;",
            "I)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isContentExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mContentMaxLines:I

    if-gt p3, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 216
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f10013f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void

    .line 211
    :cond_1
    :goto_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 212
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method private vote(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 261
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$VoteCallback;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$VoteCallback;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/accounts/UserServices;->voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z

    .line 262
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 84
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lio/github/hidroh/materialistic/Injectable;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/Injectable;->inject(Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->createLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mTertiaryTextColorResId:I

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mSecondaryTextColorResId:I

    .line 96
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCardBackgroundColorResId:I

    .line 97
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCardHighlightColorResId:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void

    :array_0
    .array-data 4
        0x1010212
        0x1010038
        0x7f04008d
        0x7f04008e
    .end array-data
.end method

.method protected bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lio/github/hidroh/materialistic/data/Item;",
            ")V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    if-nez p2, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->highlightUserItem(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 153
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->decorateDead(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 154
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 155
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getDisplayedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineCounted:Ljava/util/Map;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    .local v0, "lineCount":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->toggleCollapsibleContent(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$pi7Kb09RI5w4jetw1KYUMnMnC-s;

    invoke-direct {v2, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$pi7Kb09RI5w4jetw1KYUMnMnC-s;-><init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bindActions(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 170
    return-void
.end method

.method protected clear(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    const v2, 0x7f100097

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public bridge synthetic detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 54
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected abstract getItem(I)Lio/github/hidroh/materialistic/data/Item;
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 117
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 118
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method public getNextPosition(IILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 132
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p3, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;->onPosition(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p3, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;->onPosition(I)V

    .line 135
    nop

    .line 140
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initDisplayOptions(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->getCommentMaxLines(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mContentMaxLines:I

    .line 127
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->getLineHeight(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLineHeight:F

    .line 129
    return-void
.end method

.method isAttached()Z
    .locals 1

    .line 182
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockBinding([I)V
    .locals 0
    .param p1, "lock"    # [I

    .line 142
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    check-cast p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 104
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->clear(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;)V

    .line 108
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v1

    if-gez v1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->load(ILio/github/hidroh/materialistic/data/Item;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v1

    if-lez v1, :cond_2

    .line 111
    invoke-virtual {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method protected onItemLoaded(ILio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 192
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 195
    :cond_0
    return-void
.end method

.method onVoted(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 266
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 267
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100197

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100199

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 273
    :goto_0
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0
    .param p1, "cacheMode"    # I

    .line 122
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<TVH;>;"
    iput p1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mCacheMode:I

    .line 123
    return-void
.end method
