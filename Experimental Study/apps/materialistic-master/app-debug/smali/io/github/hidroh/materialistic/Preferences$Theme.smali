.class public Lio/github/hidroh/materialistic/Preferences$Theme;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Theme"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogTheme"    # Z
    .param p2, "isTranslucent"    # Z

    .line 414
    invoke-static {p0, p2}, Lio/github/hidroh/materialistic/Preferences$Theme;->getTheme(Landroid/content/Context;Z)Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    move-result-object v0

    .line 415
    .local v0, "themeSpec":Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    iget v1, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->theme:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 416
    iget v1, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->themeOverrides:I

    if-ltz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->themeOverrides:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    .line 420
    const v1, 0x7f040026

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 422
    :cond_1
    return-void
.end method

.method public static disableAutoDayNight(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 467
    const v0, 0x7f1000ce

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->set(Landroid/content/Context;IZ)V

    .line 468
    return-void
.end method

.method public static getAutoDayNightMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 461
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getTheme(Landroid/content/Context;Z)Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    move-result-object v1

    instance-of v1, v1, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;

    if-eqz v1, :cond_0

    const v1, 0x7f1000ce

    .line 462
    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0
.end method

.method private static getPreferredReadabilityTextSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 471
    const v0, 0x7f100111

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "choice":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getPreferredTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 475
    :cond_0
    return-object v0
.end method

.method private static getPreferredTextSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 479
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100121

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getReadabilityTypeface(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 429
    const v0, 0x7f10010f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "typefaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getTypeface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 433
    :cond_0
    return-object v0
.end method

.method private static getTheme(Landroid/content/Context;Z)Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isTransulcent"    # Z

    .line 483
    const v0, 0x7f100123

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/preference/ThemePreference;->getTheme(Ljava/lang/String;Z)Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    move-result-object v0

    return-object v0
.end method

.method static getTypeface(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 425
    const v0, 0x7f1000d3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static resolvePreferredReadabilityTextSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 457
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getPreferredReadabilityTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences$Theme;->resolveTextSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resolvePreferredTextSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 453
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getPreferredTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences$Theme;->resolveTextSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resolveTextSize(Ljava/lang/String;)I
    .locals 2
    .param p0, "choice"    # Ljava/lang/String;

    .line 437
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 442
    const v0, 0x7f11001b

    return v0

    .line 448
    :pswitch_0
    const v0, 0x7f11001e

    return v0

    .line 446
    :pswitch_1
    const v0, 0x7f11001c

    return v0

    .line 444
    :pswitch_2
    const v0, 0x7f11001d

    return v0

    .line 439
    :cond_0
    const v0, 0x7f11001f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
