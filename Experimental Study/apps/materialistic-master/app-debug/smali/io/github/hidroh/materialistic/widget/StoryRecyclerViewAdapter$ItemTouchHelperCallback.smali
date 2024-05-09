.class abstract Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;
.super Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemTouchHelperCallback"
.end annotation


# instance fields
.field private mColors:[I

.field private final mSaveText:Ljava/lang/String;

.field mSaved:Z

.field private mSwipePreferences:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field private mTexts:[Ljava/lang/String;

.field private final mUnsaveText:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipePreferences"    # [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 608
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 604
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    .line 605
    new-array v0, v0, [I

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    .line 609
    const v0, 0x7f100147

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSaveText:Ljava/lang/String;

    .line 610
    const v0, 0x7f10018b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mUnsaveText:Ljava/lang/String;

    .line 611
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->setSwipePreferences(Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V

    .line 612
    return-void
.end method

.method private getSaveText()Ljava/lang/String;
    .locals 1

    .line 677
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSaved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mUnsaveText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSaveText:Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method getLeftSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 2

    .line 664
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSwipePreferences:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    if-nez v0, :cond_0

    sget-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected getLeftText()Ljava/lang/String;
    .locals 2

    .line 616
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getLeftSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getSaveText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected getLeftTextColor()I
    .locals 2

    .line 626
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getRightSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 2

    .line 668
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSwipePreferences:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    if-nez v0, :cond_0

    sget-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected getRightText()Ljava/lang/String;
    .locals 2

    .line 621
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getRightSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getSaveText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method protected getRightTextColor()I
    .locals 2

    .line 631
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method hasAction(Lio/github/hidroh/materialistic/Preferences$SwipeAction;)Z
    .locals 4
    .param p1, "action"    # Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 672
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSwipePreferences:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object v3, v0, v2

    if-eq v3, p1, :cond_0

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setSwipePreferences(Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipePreferences"    # [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 636
    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSwipePreferences:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 638
    sget-object v1, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$6;->$SwitchMap$io$github$hidroh$materialistic$Preferences$SwipeAction:[I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x7f060054

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 656
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 657
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    goto :goto_1

    .line 652
    :pswitch_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    const v3, 0x7f100152

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 653
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    .line 654
    goto :goto_1

    .line 640
    :pswitch_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    const v2, 0x7f100198

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 641
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    const v2, 0x7f06004b

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    .line 642
    goto :goto_1

    .line 648
    :pswitch_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    const v3, 0x7f100142

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 649
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    .line 650
    goto :goto_1

    .line 644
    :pswitch_3
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mTexts:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 645
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mColors:[I

    const v2, 0x7f060082

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    .line 646
    nop

    .line 637
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
