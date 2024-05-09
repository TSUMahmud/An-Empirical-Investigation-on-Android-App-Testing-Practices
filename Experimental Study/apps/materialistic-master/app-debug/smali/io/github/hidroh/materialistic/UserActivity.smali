.class public Lio/github/hidroh/materialistic/UserActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "UserActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;
    }
.end annotation


# static fields
.field public static final EXTRA_USERNAME:Ljava/lang/String;

.field private static final KARMA:Ljava/lang/String; = " (%1$s)"

.field private static final PARAM_ID:Ljava/lang/String; = "id"

.field private static final STATE_USER:Ljava/lang/String; = "state:user"


# instance fields
.field private mAbout:Landroid/widget/TextView;

.field private mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmpty:Landroid/view/View;

.field private mInfo:Landroid/widget/TextView;

.field mItemManger:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

.field mUserManager:Lio/github/hidroh/materialistic/data/UserManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_USERNAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/UserActivity;->EXTRA_USERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method private bind()V
    .locals 10

    .line 235
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " (%1$s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    iget-object v6, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v6}, Lio/github/hidroh/materialistic/data/UserManager$User;->getKarma()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 235
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .local v0, "karma":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 238
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mInfo:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v4, p0}, Lio/github/hidroh/materialistic/data/UserManager$User;->getCreated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f10018e

    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/UserManager$User;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mAbout:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mAbout:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/UserManager$User;->getAbout()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/UserManager$User;->getItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    array-length v1, v1

    .line 246
    .local v1, "count":I
    iget-object v2, p0, Lio/github/hidroh/materialistic/UserActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    .line 247
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0004

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v5, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 246
    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 248
    iget-object v2, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;

    iget-object v5, p0, Lio/github/hidroh/materialistic/UserActivity;->mItemManger:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v7, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-interface {v7}, Lio/github/hidroh/materialistic/data/UserManager$User;->getItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;[Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object v2, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lio/github/hidroh/materialistic/UserActivity;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 251
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/UserActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private load()V
    .locals 3

    .line 213
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUserManager:Lio/github/hidroh/materialistic/data/UserManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    new-instance v2, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;-><init>(Lio/github/hidroh/materialistic/UserActivity;)V

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/UserManager;->getUser(Ljava/lang/String;Lio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 214
    return-void
.end method

.method private showEmpty()V
    .locals 6

    .line 227
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v1

    const v5, 0x7f0f0004

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 230
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected isTranslucent()Z
    .locals 1

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/UserActivity;->EXTRA_USERNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getDataUriId(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTaskTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarDim(Landroid/view/Window;Z)V

    .line 84
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$UserActivity$vpxTmq3TAO9yzt75v0R6gtama-Y;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$UserActivity$vpxTmq3TAO9yzt75v0R6gtama-Y;-><init>(Lio/github/hidroh/materialistic/UserActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mBottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v2, Lio/github/hidroh/materialistic/UserActivity$1;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/UserActivity$1;-><init>(Lio/github/hidroh/materialistic/UserActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 113
    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mTitle:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/UserActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mInfo:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mAbout:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mEmpty:Landroid/view/View;

    .line 118
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 119
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v2, Lio/github/hidroh/materialistic/UserActivity$2;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/UserActivity$2;-><init>(Lio/github/hidroh/materialistic/UserActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 135
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    invoke-direct {v2, p0, v1}, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 138
    new-instance v0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    .line 140
    if-eqz p1, :cond_2

    .line 141
    const-string v0, "state:user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/UserManager$User;

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    .line 143
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    if-nez v0, :cond_3

    .line 144
    invoke-direct {p0}, Lio/github/hidroh/materialistic/UserActivity;->load()V

    goto :goto_0

    .line 146
    :cond_3
    invoke-direct {p0}, Lio/github/hidroh/materialistic/UserActivity;->bind()V

    .line 148
    :goto_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000ac

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 153
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->setScrollable(Lio/github/hidroh/materialistic/Scrollable;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 176
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 176
    :goto_1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 188
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 188
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 182
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 182
    :goto_1
    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "state:user"

    iget-object v1, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 158
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->attach(Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 170
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->detach(Landroid/app/Activity;)V

    .line 171
    return-void
.end method

.method onUserLoaded(Lio/github/hidroh/materialistic/data/UserManager$User;)V
    .locals 0
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/UserManager$User;

    .line 218
    if-eqz p1, :cond_0

    .line 219
    iput-object p1, p0, Lio/github/hidroh/materialistic/UserActivity;->mUser:Lio/github/hidroh/materialistic/data/UserManager$User;

    .line 220
    invoke-direct {p0}, Lio/github/hidroh/materialistic/UserActivity;->bind()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/UserActivity;->showEmpty()V

    .line 224
    :goto_0
    return-void
.end method

.method public scrollToNext()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public scrollToPrevious()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 1

    .line 194
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToTop()V

    .line 195
    return-void
.end method
