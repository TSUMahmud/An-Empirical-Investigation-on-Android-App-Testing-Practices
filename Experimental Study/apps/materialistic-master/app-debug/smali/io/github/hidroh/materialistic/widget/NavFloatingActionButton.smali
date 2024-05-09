.class public Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "NavFloatingActionButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final DOUBLE_TAP:I = -0x1

.field private static final KONAMI_CODE:[I

.field private static final PREFERENCES_FAB:Ljava/lang/String; = "_fab"

.field private static final PREFERENCES_FAB_X:Ljava/lang/String; = "%1$s_%2$d_%3$d_x"

.field private static final PREFERENCES_FAB_Y:Ljava/lang/String; = "%1$s_%2$d_%3$d_y"

.field private static final VIBRATE_DURATION_MS:J = 0xfL


# instance fields
.field mMoved:Z

.field mNavigable:Lio/github/hidroh/materialistic/Navigable;

.field private mNextKonamiCode:I

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field private mPreferenceX:Ljava/lang/String;

.field private mPreferenceY:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field mVibrationEnabled:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->KONAMI_CODE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x2
        0x3
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNextKonamiCode:I

    .line 87
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->bindNavigationPad()V

    .line 88
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->navigationVibrationEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrationEnabled:Z

    .line 89
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrator:Landroid/os/Vibrator;

    .line 94
    :goto_0
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .line 268
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 270
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 271
    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 9

    .line 275
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferences:Landroid/content/SharedPreferences;

    .line 277
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 278
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$s_%2$d_%3$d_x"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 278
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceX:Ljava/lang/String;

    .line 280
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$s_%2$d_%3$d_y"

    new-array v3, v3, [Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 280
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceY:Ljava/lang/String;

    .line 283
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_fab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onAttachedToWindow$0(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->navigationVibrationEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrationEnabled:Z

    return-void
.end method

.method public static synthetic lambda$trackKonami$1(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 226
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->openPlayStore(Landroid/content/Context;)V

    return-void
.end method

.method public static resetPosition(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    invoke-static {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method private restorePosition()V
    .locals 3

    .line 263
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceX:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setX(F)V

    .line 264
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setY(F)V

    .line 265
    return-void
.end method

.method private stopObservingViewTree()V
    .locals 2

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 249
    :goto_0
    return-void
.end method


# virtual methods
.method bindNavigationPad()V
    .locals 3

    .line 123
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;-><init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 171
    .local v0, "detectorCompat":Landroidx/core/view/GestureDetectorCompat;
    new-instance v1, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;

    invoke-direct {v1, p0, v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;-><init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;Landroidx/core/view/GestureDetectorCompat;)V

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 98
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onAttachedToWindow()V

    .line 99
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$NavFloatingActionButton$jFr-6YchsGWU3TBR2WylsRkx95I;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$NavFloatingActionButton$jFr-6YchsGWU3TBR2WylsRkx95I;-><init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x7f1000ff

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onDetachedFromWindow()V

    .line 108
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->stopObservingViewTree()V

    .line 109
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->restorePosition()V

    .line 239
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->stopObservingViewTree()V

    .line 240
    return-void
.end method

.method persistPosition()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceX:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mPreferenceY:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public setNavigable(Lio/github/hidroh/materialistic/Navigable;)V
    .locals 0
    .param p1, "navigable"    # Lio/github/hidroh/materialistic/Navigable;

    .line 118
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNavigable:Lio/github/hidroh/materialistic/Navigable;

    .line 119
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method startDrag(FF)V
    .locals 3
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 182
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrationEnabled:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100082

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    new-instance v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;

    invoke-direct {v0, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;-><init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;FF)V

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    return-void
.end method

.method trackKonami(I)Z
    .locals 5
    .param p1, "direction"    # I

    .line 214
    sget-object v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->KONAMI_CODE:[I

    iget v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNextKonamiCode:I

    aget v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_1

    .line 215
    aget v0, v0, v3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNextKonamiCode:I

    .line 216
    return v3

    .line 217
    :cond_1
    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_3

    .line 218
    iput v3, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNextKonamiCode:I

    .line 219
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrationEnabled:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 223
    :cond_2
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0043

    .line 224
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$NavFloatingActionButton$Oh0VjmQz7FCZeo-pSus8QY4q-rU;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$NavFloatingActionButton$Oh0VjmQz7FCZeo-pSus8QY4q-rU;-><init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 229
    return v4

    .line 231
    :cond_3
    add-int/2addr v1, v4

    iput v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNextKonamiCode:I

    .line 232
    return v4

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method
