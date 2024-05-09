.class public Lio/github/hidroh/materialistic/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;
    }
.end annotation


# static fields
.field private static final ABBR_DAY:Ljava/lang/String; = "d"

.field private static final ABBR_HOUR:Ljava/lang/String; = "h"

.field private static final ABBR_MINUTE:Ljava/lang/String; = "m"

.field private static final ABBR_WEEK:Ljava/lang/String; = "w"

.field private static final ABBR_YEAR:Ljava/lang/String; = "y"

.field private static final FORMAT_HTML_COLOR:Ljava/lang/String; = "%06X"

.field private static final HOST_ITEM:Ljava/lang/String; = "item"

.field private static final HOST_USER:Ljava/lang/String; = "user"

.field public static final HOT_FACTOR:I = 0x3

.field public static final HOT_THRESHOLD_HIGH:I = 0x12c

.field static final HOT_THRESHOLD_LOW:I = 0xa

.field public static final HOT_THRESHOLD_NORMAL:I = 0x64

.field private static final PLAY_STORE_URL:Ljava/lang/String; = "market://details?id=io.github.hidroh.materialistic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItemUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .line 536
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "io.github.hidroh.materialistic"

    .line 537
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "item"

    .line 538
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 536
    return-object v0
.end method

.method public static createLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 521
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 522
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->resolvePreferredTextSize(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 521
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static createUserUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .line 544
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "io.github.hidroh.materialistic"

    .line 545
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "user"

    .line 546
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 544
    return-object v0
.end method

.method private static createViewIntent(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "session"    # Landroidx/browser/customtabs/CustomTabsSession;

    .line 596
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->customTabsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0, p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    const v1, 0x7f040093

    .line 599
    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v1

    .line 598
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 600
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 601
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 602
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 603
    .local v0, "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    if-eqz p1, :cond_0

    .line 604
    const v2, 0x7f100047

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v5, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 607
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_OPEN_COMMENTS:Ljava/lang/String;

    .line 608
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x40000000    # 2.0f

    .line 605
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 611
    :cond_0
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 613
    .end local v0    # "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "htmlText"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "compact"    # Z

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 191
    if-eqz p1, :cond_1

    const/16 v0, 0x3f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_2
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 197
    .local v0, "spanned":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getAbbreviatedTimeSpan(J)Ljava/lang/String;
    .locals 5
    .param p0, "timeMillis"    # J

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 285
    .local v0, "span":J
    const-wide v2, 0x7528ad000L

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "y"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 288
    :cond_0
    const-wide/32 v2, 0x240c8400

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "w"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 291
    :cond_1
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 294
    :cond_2
    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0xea60

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCredentials(Landroid/content/Context;)Landroidx/core/util/Pair;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 318
    return-object v2

    .line 320
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 321
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v3, "io.github.hidroh.materialistic"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 322
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 323
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 324
    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    return-object v2

    .line 322
    .end local v6    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    :cond_2
    return-object v2
.end method

.method public static getDataUriId(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "altParamId"    # Ljava/lang/String;

    .line 552
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.github.hidroh.materialistic"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDimension(Landroid/content/Context;II)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleResId"    # I
    .param p2, "attr"    # I

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 265
    .local v1, "size":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    return v1
.end method

.method public static getDimensionInDp(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenResId"    # I

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 275
    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 513
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 514
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 515
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 516
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 517
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public static getThemedResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 257
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 258
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return v1
.end method

.method public static hasConnection(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 309
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 310
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 311
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isHackerNewsUrl(Lio/github/hidroh/materialistic/data/WebItem;)Z
    .locals 6
    .param p0, "item"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 270
    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https://news.ycombinator.com/item?id=%s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1
.end method

.method public static isOnWiFi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 301
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 303
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    return v1
.end method

.method static synthetic lambda$openExternal$0(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;Landroid/view/MenuItem;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "session"    # Landroidx/browser/customtabs/CustomTabsSession;
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 225
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f09009f

    if-ne v0, v2, :cond_0

    .line 226
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://news.ycombinator.com/item?id=%s"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 227
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    invoke-static {p0, p1, v0, p2}, Lio/github/hidroh/materialistic/AppUtils;->openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 228
    return v1
.end method

.method static synthetic lambda$registerAccountsUpdatedListener$2(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 353
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 358
    .local v3, "account":Landroid/accounts/Account;
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    return-void

    .line 357
    .end local v3    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/Preferences;->setUsername(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method static synthetic lambda$share$1(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/MenuItem;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 246
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x7f09009f

    if-ne v1, v3, :cond_0

    .line 248
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "https://news.ycombinator.com/item?id=%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 249
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_0
    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return v2
.end method

.method static synthetic lambda$toggleFabAction$3(ZLandroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V
    .locals 4
    .param p0, "commentMode"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p3, "v"    # Landroid/view/View;

    .line 460
    if-eqz p0, :cond_1

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    .line 462
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    instance-of v2, p2, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lio/github/hidroh/materialistic/data/Item;

    .line 464
    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/Item;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 463
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 466
    :cond_1
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v3, 0x1

    .line 468
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 470
    :goto_1
    return-void
.end method

.method public static makeSendIntentChooser(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/net/Uri;

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Lio/github/hidroh/materialistic/AppUtils$2;

    invoke-direct {v2, p1}, Lio/github/hidroh/materialistic/AppUtils$2;-><init>(Landroid/net/Uri;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    const v1, 0x7f100153

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static multiWindowIntent(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 619
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const v0, 0x18001000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    :cond_0
    return-object p1
.end method

.method public static navigate(ILcom/google/android/material/appbar/AppBarLayout;Lio/github/hidroh/materialistic/Navigable;)V
    .locals 2
    .param p0, "direction"    # I
    .param p1, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p2, "navigable"    # Lio/github/hidroh/materialistic/Navigable;

    .line 497
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 507
    invoke-interface {p2, p0}, Lio/github/hidroh/materialistic/Navigable;->onNavigate(I)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    if-nez v1, :cond_1

    .line 501
    invoke-interface {p2, p0}, Lio/github/hidroh/materialistic/Navigable;->onNavigate(I)V

    goto :goto_0

    .line 503
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 505
    nop

    .line 510
    :goto_0
    return-void
.end method

.method public static openExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupMenu"    # Lio/github/hidroh/materialistic/widget/PopupMenu;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p4, "session"    # Landroidx/browser/customtabs/CustomTabsSession;

    .line 215
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://news.ycombinator.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    const v0, 0x800005

    invoke-interface {p1, p0, p2, v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    const v1, 0x7f0d000e

    .line 223
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;

    invoke-direct {v1, p0, p3, p4}, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 224
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 231
    return-void

    .line 217
    :cond_1
    :goto_0
    const-string v0, "https://news.ycombinator.com/item?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 218
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {p0, p3, v0, p4}, Lio/github/hidroh/materialistic/AppUtils;->openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 220
    return-void
.end method

.method public static openPlayStore(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=io.github.hidroh.materialistic"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x48000000    # 131072.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x80000

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f1000a4

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 382
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method public static openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "session"    # Landroidx/browser/customtabs/CustomTabsSession;

    .line 99
    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/OfflineWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/OfflineWebActivity;->EXTRA_URL:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/AppUtils;->createViewIntent(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://news.ycombinator.com"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_1
    return-void

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 112
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/AppUtils;->createViewIntent(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 119
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    return-void

    .line 124
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6

    .line 125
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const v4, 0x7f100035

    .line 128
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    .line 129
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    :goto_1
    return-void
.end method

.method public static registerAccountsUpdatedListener(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 352
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$TZe1jD_Xg2txKtCX7b4tGcMg428;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$TZe1jD_Xg2txKtCX7b4tGcMg428;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 364
    return-void
.end method

.method public static restart(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "transition"    # Z

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 281
    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 492
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 494
    :cond_0
    return-void
.end method

.method public static setStatusBarDim(Landroid/view/Window;Z)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dim"    # Z

    .line 485
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040094

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v1

    .line 486
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 485
    :goto_0
    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 488
    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textAppearance"    # I

    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 629
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 634
    :goto_0
    return-void
.end method

.method public static setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "html"    # Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v0, Lio/github/hidroh/materialistic/AppUtils$1;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/AppUtils$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    return-void
.end method

.method public static share(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupMenu"    # Lio/github/hidroh/materialistic/widget/PopupMenu;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "item"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 237
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://news.ycombinator.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    const v0, 0x800005

    invoke-interface {p1, p0, p2, v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    const v1, 0x7f0d000e

    .line 244
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;

    invoke-direct {v1, p0, p3}, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 245
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 253
    return-void

    .line 239
    :cond_1
    :goto_0
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://news.ycombinator.com/item?id=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 240
    invoke-interface {p3}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    .line 528
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " - "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 530
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 529
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    :cond_1
    return-void
.end method

.method public static showAccountChooser(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;[Landroid/accounts/Account;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertDialogBuilder"    # Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .param p2, "accounts"    # [Landroid/accounts/Account;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 387
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "username":Ljava/lang/String;
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    .line 389
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 390
    .local v2, "checked":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 391
    aget-object v4, p2, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 392
    .local v4, "accountName":Ljava/lang/String;
    aput-object v4, v1, v3

    .line 393
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    move v2, v3

    .line 390
    .end local v4    # "accountName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    .end local v3    # "i":I
    :cond_1
    move v3, v2

    .line 398
    .local v3, "initialSelection":I
    new-instance v4, Lio/github/hidroh/materialistic/AppUtils$3;

    invoke-direct {v4, v3, p0, v1, p2}, Lio/github/hidroh/materialistic/AppUtils$3;-><init>(ILandroid/content/Context;[Ljava/lang/String;[Landroid/accounts/Account;)V

    .line 436
    .local v4, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    nop

    .line 437
    invoke-interface {p1, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f100034

    .line 438
    invoke-interface {v5, v6}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setTitle(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    .line 439
    invoke-interface {v5, v1, v2, v4}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    const v6, 0x104000a

    .line 440
    invoke-interface {v5, v6, v4}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f100028

    .line 441
    invoke-interface {v5, v6, v4}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f100144

    .line 442
    invoke-interface {v5, v6, v4}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v5

    .line 443
    invoke-interface {v5}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->show()Landroid/app/Dialog;

    .line 444
    return-void
.end method

.method public static showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertDialogBuilder"    # Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 340
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "io.github.hidroh.materialistic"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 341
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {p0, p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->showAccountChooser(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;[Landroid/accounts/Account;)V

    .line 348
    :goto_0
    return-void
.end method

.method public static toHtmlColor(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttr"    # I

    .line 474
    const-string v0, "%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 475
    invoke-static {p0, p1}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v2

    .line 474
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHtmlPx(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimen"    # F

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0
.end method

.method private static toHtmlPx(Landroid/content/Context;I)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textStyleAttr"    # I

    .line 575
    const v0, 0x7f0400a5

    invoke-static {p0, p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getDimension(Landroid/content/Context;II)F

    move-result v0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlPx(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public static toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V
    .locals 1
    .param p0, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p1, "visible"    # Z

    .line 447
    if-eqz p1, :cond_0

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_0

    .line 451
    :cond_0
    sget-object v0, Lio/github/hidroh/materialistic/FabAwareScrollBehavior;->HIDDEN:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 454
    :goto_0
    return-void
.end method

.method public static toggleFabAction(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lio/github/hidroh/materialistic/data/WebItem;Z)V
    .locals 2
    .param p0, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "commentMode"    # Z

    .line 457
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    const v1, 0x7f080092

    goto :goto_0

    :cond_0
    const v1, 0x7f0800a4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 459
    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;

    invoke-direct {v1, p2, v0, p1}, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;-><init>(ZLandroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    return-void
.end method

.method public static toggleWebViewZoom(Landroid/webkit/WebSettings;Z)V
    .locals 1
    .param p0, "webSettings"    # Landroid/webkit/WebSettings;
    .param p1, "enabled"    # Z

    .line 479
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 480
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 482
    return-void
.end method

.method private static trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    return-object p0

    .line 586
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 587
    .local v0, "end":I
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 590
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static urlEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "thisUrl"    # Ljava/lang/String;
    .param p1, "thatUrl"    # Ljava/lang/String;

    .line 637
    invoke-static {p0}, Lio/github/hidroh/materialistic/AndroidUtils$TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lio/github/hidroh/materialistic/AndroidUtils$TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 640
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 641
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object p1, v0

    .line 642
    invoke-static {p0, p1}, Lio/github/hidroh/materialistic/AndroidUtils$TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 638
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static wrapHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "html"    # Ljava/lang/String;

    .line 563
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 564
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getReadabilityTypeface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 565
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->resolvePreferredReadabilityTextSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlPx(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 566
    const v1, 0x1010036

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 567
    const v1, 0x101009b

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {p0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlPx(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {p0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlPx(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 571
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getReadabilityLineHeight(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 563
    const v1, 0x7f100087

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
