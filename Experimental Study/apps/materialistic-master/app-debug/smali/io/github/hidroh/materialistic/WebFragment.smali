.class public Lio/github/hidroh/materialistic/WebFragment;
.super Lio/github/hidroh/materialistic/LazyLoadFragment;
.source "WebFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;
.implements Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;,
        Lio/github/hidroh/materialistic/WebFragment$ItemResponseListener;,
        Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;
    }
.end annotation


# static fields
.field static final ACTION_FULLSCREEN:Ljava/lang/String;

.field private static final DEFAULT_PROGRESS:I = 0x14

.field static final EXTRA_FULLSCREEN:Ljava/lang/String;

.field public static final EXTRA_ITEM:Ljava/lang/String;

.field public static final PDF_LOADER_URL:Ljava/lang/String; = "file:///android_asset/pdf/index.html"

.field private static final PDF_MIME_TYPE:Ljava/lang/String; = "application/pdf"

.field private static final STATE_CONTENT:Ljava/lang/String; = "state:content"

.field private static final STATE_EMPTY:Ljava/lang/String; = "state:empty"

.field private static final STATE_FULLSCREEN:Ljava/lang/String; = "state:fullscreen"

.field private static final STATE_READABILITY:Ljava/lang/String; = "state:readability"


# instance fields
.field private mButtonMore:Landroid/view/View;

.field private mButtonNext:Landroid/view/View;

.field mButtonRefresh:Landroid/widget/ImageButton;

.field protected mContent:Ljava/lang/String;

.field private mControls:Landroid/widget/ViewSwitcher;

.field private mEditText:Landroid/widget/EditText;

.field private mEmpty:Z

.field mExternalRequired:Z

.field mFileDownloader:Lio/github/hidroh/materialistic/data/FileDownloader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFragmentView:Landroid/view/View;

.field private mFullscreen:Z

.field private mFullscreenView:Landroid/view/ViewGroup;

.field private mIsHackerNewsUrl:Z

.field private mIsPdf:Z

.field private mItem:Lio/github/hidroh/materialistic/data/WebItem;

.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field private mPdfAndroidJavascriptBridge:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

.field mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mReadability:Z

.field mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mScrollViewContent:Landroid/view/ViewGroup;

.field private mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

.field private mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

.field mWebView:Lio/github/hidroh/materialistic/widget/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_ITEM:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ACTION_FULLSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FULLSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mExternalRequired:Z

    .line 90
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 91
    new-instance v0, Lio/github/hidroh/materialistic/WebFragment$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/WebFragment$1;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 72
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->offerExternalApp()V

    return-void
.end method

.method static synthetic access$100(Lio/github/hidroh/materialistic/WebFragment;I)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/WebFragment;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/WebFragment;->setProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lio/github/hidroh/materialistic/WebFragment;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 72
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsPdf:Z

    return v0
.end method

.method static synthetic access$300(Lio/github/hidroh/materialistic/WebFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/WebFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/WebFragment;->reloadUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bindContent()V
    .locals 4

    .line 355
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    instance-of v1, v0, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->loadContent()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lio/github/hidroh/materialistic/WebFragment$ItemResponseListener;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/WebFragment$ItemResponseListener;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-interface {v1, v0, v2, v3}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 361
    :goto_0
    return-void
.end method

.method private downloadFileAndRenderPdf()V
    .locals 4

    .line 612
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFileDownloader:Lio/github/hidroh/materialistic/data/FileDownloader;

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/pdf"

    new-instance v3, Lio/github/hidroh/materialistic/WebFragment$5;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/WebFragment$5;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;)V

    .line 623
    return-void
.end method

.method private findInPage()V
    .locals 3

    .line 552
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 557
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$qalkejmUtNfu95CWZuAKINffZbo;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$qalkejmUtNfu95CWZuAKINffZbo;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 562
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/WebFragment;->handleFindResults(I)V

    .line 567
    :goto_0
    return-void
.end method

.method private fontEnabled()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleFindResults(I)V
    .locals 3
    .param p1, "numberOfMatches"    # I

    .line 570
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonNext:Landroid/view/View;

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    if-nez p1, :cond_1

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1000a3

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 574
    :cond_1
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/WebFragment;->toggleSoftKeyboard(Z)V

    .line 576
    :goto_1
    return-void
.end method

.method private isPdfRenderingSupported()Z
    .locals 2

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$ShTylx7jE1DpropT5S-9k-4-sEY(Lio/github/hidroh/materialistic/WebFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/WebFragment;->onPreferenceChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$findInPage$14(Lio/github/hidroh/materialistic/WebFragment;IIZ)V
    .locals 0
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .line 558
    if-eqz p3, :cond_0

    .line 559
    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/WebFragment;->handleFindResults(I)V

    .line 561
    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$8(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900ad

    if-ne v0, v2, :cond_0

    .line 407
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->showPreferences()V

    .line 408
    return v1

    .line 410
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900c1

    if-ne v0, v2, :cond_1

    .line 411
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 412
    return v1

    .line 414
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900c2

    if-ne v0, v2, :cond_2

    .line 415
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    .line 416
    return v1

    .line 418
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$offerExternalApp$12(Lio/github/hidroh/materialistic/WebFragment;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 477
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$setFullscreen$13(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$0(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 377
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->scrollToTop()V

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$1(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 378
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$10(Lio/github/hidroh/materialistic/WebFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 422
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->findInPage()V

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$setUpWebControls$2(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$3(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 381
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->setFullscreen(Z)V

    .line 382
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->reset()V

    .line 383
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mControls:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 384
    return-void
.end method

.method public static synthetic lambda$setUpWebControls$4(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 386
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->toggleSoftKeyboard(Z)V

    .line 388
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mControls:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 389
    return-void
.end method

.method public static synthetic lambda$setUpWebControls$5(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 391
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 396
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setUpWebControls$6(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$7(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 401
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    return-void
.end method

.method public static synthetic lambda$setUpWebControls$9(Lio/github/hidroh/materialistic/WebFragment;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 403
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonMore:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 404
    const v1, 0x7f0d0011

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$7m22dT9Y7bpYbYamCdDKQe2Sb7s;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$7m22dT9Y7bpYbYamCdDKQe2Sb7s;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    .line 405
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 420
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->fontEnabled()Z

    move-result v1

    const v2, 0x7f0900ad

    invoke-interface {v0, v2, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 403
    return-void
.end method

.method public static synthetic lambda$setUpWebView$11(Lio/github/hidroh/materialistic/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->isPdfRenderingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "application/pdf"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setProgress(I)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsPdf:Z

    .line 461
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->downloadFileAndRenderPdf()V

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->offerExternalApp()V

    .line 465
    :goto_0
    return-void
.end method

.method private loadUrl()V
    .locals 1

    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setWebSettings(Z)V

    .line 302
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->reloadUrl(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private modeToggleEnabled()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsHackerNewsUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private offerExternalApp()V
    .locals 3

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mExternalRequired:Z

    .line 475
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$vtZj15cCkS9vQvfnMfr2UmfWSII;

    invoke-direct {v2, p0, v0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$vtZj15cCkS9vQvfnMfr2UmfWSII;-><init>(Lio/github/hidroh/materialistic/WebFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    return-void
.end method

.method private onPreferenceChanged(IZ)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 539
    if-nez p2, :cond_0

    .line 540
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->load()V

    .line 542
    :cond_0
    return-void
.end method

.method private parse()V
    .locals 4

    .line 350
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 351
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/ReadabilityClient;->parse(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V

    .line 352
    return-void
.end method

.method private pauseWebView()V
    .locals 1

    .line 364
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 365
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 366
    return-void
.end method

.method private reloadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/WebFragment;->reloadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private reloadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pdfFilePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsPdf:Z

    .line 312
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPdfAndroidJavascriptBridge:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->cleanUp()V

    .line 314
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const-string v1, "PdfAndroidJavascriptBridge"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 316
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->isPdfRenderingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file:///android_asset/pdf/index.html"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setProgress(I)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsPdf:Z

    .line 319
    new-instance v1, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

    new-instance v2, Lio/github/hidroh/materialistic/WebFragment$2;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/WebFragment$2;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-direct {v1, p2, v2}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;-><init>(Ljava/lang/String;Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mPdfAndroidJavascriptBridge:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

    .line 331
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mPdfAndroidJavascriptBridge:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

    const-string v3, "PdfAndroidJavascriptBridge"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 334
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/WebView;->reloadUrl(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private reset()V
    .locals 2

    .line 545
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonNext:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 547
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/WebFragment;->toggleSoftKeyboard(Z)V

    .line 548
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 549
    return-void
.end method

.method private setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 481
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 482
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonRefresh:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    const v1, 0x7f080091

    goto :goto_1

    :cond_1
    const v1, 0x7f080071

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    return-void
.end method

.method private setUpWebControls(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 377
    const v0, 0x7f090140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$mL5ZCnadmcnAG469RJ1sbQ2srLI;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$mL5ZCnadmcnAG469RJ1sbQ2srLI;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$syaxk3JtM6l91n9v5f7InR6tp7Y;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$syaxk3JtM6l91n9v5f7InR6tp7Y;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$olZVmPpFkCQnrmV9psyH4CzbDDQ;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$olZVmPpFkCQnrmV9psyH4CzbDDQ;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f09002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$lqYI_ddJCELdls5GEQGn0hJRs6I;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$lqYI_ddJCELdls5GEQGn0hJRs6I;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$LYoyVx4mZNCk7vYtI6kTz-YD3bg;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$LYoyVx4mZNCk7vYtI6kTz-YD3bg;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonRefresh:Landroid/widget/ImageButton;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$jrgWYjKxjCfNL1GKWq1zNAoKxCo;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$jrgWYjKxjCfNL1GKWq1zNAoKxCo;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v0, 0x7f090031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$i_hmhPYf9n3riTD_AQOsq30Wdek;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$i_hmhPYf9n3riTD_AQOsq30Wdek;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonNext:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$605MIVkSwqWOnazH3aDoRfWRHsE;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$605MIVkSwqWOnazH3aDoRfWRHsE;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonMore:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$ZnkQylk7VJwxBMoAdwZCNLbbxLY;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$ZnkQylk7VJwxBMoAdwZCNLbbxLY;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PmBpXYI52-IkK2BxMc26exr1ZSA;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PmBpXYI52-IkK2BxMc26exr1ZSA;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 423
    return-void
.end method

.method private setUpWebView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 426
    const v0, 0x7f0900db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 427
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 428
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    new-instance v2, Lio/github/hidroh/materialistic/WebFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lio/github/hidroh/materialistic/Preferences;->adBlockEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lio/github/hidroh/materialistic/WebFragment$3;-><init>(Lio/github/hidroh/materialistic/WebFragment;Z)V

    invoke-virtual {v0, v2}, Lio/github/hidroh/materialistic/widget/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 445
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    new-instance v2, Lio/github/hidroh/materialistic/WebFragment$4;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/WebFragment$4;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 454
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$F-xkXGsP0JbQlJYEYpP8oQXoSvg;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$F-xkXGsP0JbQlJYEYpP8oQXoSvg;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 466
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toggleWebViewZoom(Landroid/webkit/WebSettings;Z)V

    .line 467
    return-void
.end method

.method private setWebSettings(Z)V
    .locals 2
    .param p1, "isRemote"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 489
    nop

    xor-int/lit8 v0, p1, 0x1

    nop

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    .line 490
    nop

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    if-eqz p1, :cond_0

    nop

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    nop

    const/4 v1, 0x0

    :goto_0
    nop

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 491
    nop

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 492
    nop

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 493
    nop

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 494
    nop

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 495
    nop

    return-void
.end method

.method private showPreferences()V
    .locals 5

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_TITLE:Ljava/lang/String;

    const v2, 0x7f10006b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_XML_PREFERENCES:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f13000b

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    .line 534
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-static {v1, v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method private toggleSoftKeyboard(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 581
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 582
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 584
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 586
    :goto_0
    return-void
.end method


# virtual methods
.method protected createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 180
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    return-void
.end method

.method protected load()V
    .locals 2

    .line 286
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 287
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsHackerNewsUrl:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->bindContent()V

    goto :goto_0

    .line 289
    :cond_0
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEmpty:Z

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->parse()V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->loadContent()V

    goto :goto_0

    .line 296
    :cond_2
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->loadUrl()V

    .line 298
    :goto_0
    return-void
.end method

.method loadContent()V
    .locals 3

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setWebSettings(Z)V

    .line 346
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->wrapHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/WebView;->reloadHtml(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onAttach(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$ShTylx7jE1DpropT5S-9k-4-sEY;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$ShTylx7jE1DpropT5S-9k-4-sEY;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p1, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 123
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    return-void

    :array_0
    .array-data 4
        0x7f10010f
        0x7f100110
        0x7f100111
    .end array-data
.end method

.method public onBackPressed()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 279
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 131
    const-string v1, "state:fullscreen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    .line 132
    const-string v1, "state:content"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    .line 133
    const-string v1, "state:empty"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mEmpty:Z

    .line 134
    const-string v1, "state:readability"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    .line 135
    sget-object v0, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Readability:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 141
    :goto_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->isHackerNewsUrl(Lio/github/hidroh/materialistic/data/WebItem;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mIsHackerNewsUrl:Z

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 146
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->isNewInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f0c004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090083

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreenView:Landroid/view/ViewGroup;

    .line 149
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0900f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollViewContent:Landroid/view/ViewGroup;

    .line 150
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0900cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 151
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mControls:Landroid/widget/ViewSwitcher;

    .line 152
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/WebView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    .line 153
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonRefresh:Landroid/widget/ImageButton;

    .line 154
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonMore:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonNext:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mButtonNext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEditText:Landroid/widget/EditText;

    .line 158
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setUpWebControls(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setUpWebView(Landroid/view/View;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 232
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseFragment;->onDestroy()V

    .line 233
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPdfAndroidJavascriptBridge:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->cleanUp()V

    .line 236
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 237
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 241
    invoke-super {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onDetach()V

    .line 242
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    return-void
.end method

.method onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/Item;

    .line 606
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 607
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 608
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->bindContent()V

    .line 609
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900ad

    if-ne v0, v2, :cond_0

    .line 196
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->showPreferences()V

    .line 197
    return v1

    .line 199
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900b6

    if-ne v0, v2, :cond_1

    .line 200
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    .line 201
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->load()V

    .line 202
    return v1

    .line 204
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method onParsed(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment;->loadContent()V

    goto :goto_0

    .line 595
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mEmpty:Z

    .line 596
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100141

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 599
    :cond_1
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->loadUrl()V

    .line 602
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 210
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 211
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 212
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 222
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "state:fullscreen"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v0, "state:content"

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_ITEM:Ljava/lang/String;

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v0, "state:empty"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mEmpty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "state:readability"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 217
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->pauseWebView()V

    .line 218
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 166
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 168
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->isNewInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

    .line 170
    new-instance v1, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;-><init>(Landroid/view/Window;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    .line 171
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->setEnabled(Z)V

    .line 172
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/WebFragment;->setFullscreen(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 185
    const v0, 0x7f0900b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 186
    .local v0, "menuReadability":Landroid/view/MenuItem;
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->modeToggleEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseFragment;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08009f

    goto :goto_0

    :cond_0
    const v2, 0x7f080070

    :goto_0
    invoke-virtual {v1, v0, v2}, Lio/github/hidroh/materialistic/MenuTintDelegate;->setIcon(Landroid/view/MenuItem;I)V

    .line 189
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mReadability:Z

    if-eqz v1, :cond_1

    const v1, 0x7f10002e

    goto :goto_1

    :cond_1
    const v1, 0x7f100140

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 190
    const v1, 0x7f0900ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->fontEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    return-void
.end method

.method public scrollToNext()Z
    .locals 2

    .line 257
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public scrollToPrevious()Z
    .locals 2

    .line 267
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$NestedScrollViewHelper;->scrollToTop()V

    .line 253
    :goto_0
    return-void
.end method

.method setFullscreen(Z)V
    .locals 4
    .param p1, "isFullscreen"    # Z

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreen:Z

    .line 503
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mControls:Landroid/widget/ViewSwitcher;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/AppUtils;->toggleWebViewZoom(Landroid/webkit/WebSettings;Z)V

    .line 505
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 506
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 507
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 508
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 509
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreenView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 512
    :cond_2
    invoke-direct {p0}, Lio/github/hidroh/materialistic/WebFragment;->reset()V

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_3

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
    :cond_3
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mFullscreenView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 521
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v3, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollViewContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 522
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$bHm81CRh19GTHWbzZGbqw8Nl_dQ;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$bHm81CRh19GTHWbzZGbqw8Nl_dQ;-><init>(Lio/github/hidroh/materialistic/WebFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 523
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    .end local v1    # "i":I
    :goto_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment;->mWebView:Lio/github/hidroh/materialistic/widget/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    return-void
.end method
