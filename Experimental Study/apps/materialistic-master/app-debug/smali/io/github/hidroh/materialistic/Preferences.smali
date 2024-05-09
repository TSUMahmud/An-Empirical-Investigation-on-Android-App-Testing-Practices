.class public Lio/github/hidroh/materialistic/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/Preferences$Observer;,
        Lio/github/hidroh/materialistic/Preferences$Observable;,
        Lio/github/hidroh/materialistic/Preferences$Offline;,
        Lio/github/hidroh/materialistic/Preferences$Theme;,
        Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;,
        Lio/github/hidroh/materialistic/Preferences$StoryViewMode;,
        Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    }
.end annotation


# static fields
.field private static final DRAFT_PREFIX:Ljava/lang/String; = "draft_%1$s"

.field private static final PREFERENCES_DRAFT:Ljava/lang/String; = "_drafts"

.field private static final PREF_MIGRATION:[Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

.field static sReleaseNotesSeen:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lio/github/hidroh/materialistic/Preferences;->sReleaseNotesSeen:Ljava/lang/Boolean;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

    new-instance v1, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

    const/4 v2, 0x0

    const v3, 0x7f1000d9

    const v4, 0x7f10011c

    const v5, 0x7f10011f

    invoke-direct {v1, v3, v2, v4, v5}, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;-><init>(IZII)V

    aput-object v1, v0, v2

    new-instance v1, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

    const/4 v2, 0x1

    const v3, 0x7f1000da

    const v4, 0x7f100115

    const v5, 0x7f100117

    invoke-direct {v1, v3, v2, v4, v5}, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;-><init>(IZII)V

    aput-object v1, v0, v2

    sput-object v0, Lio/github/hidroh/materialistic/Preferences;->PREF_MIGRATION:[Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adBlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 243
    const v0, 0x7f1000bb

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static autoMarkAsViewed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 164
    const v0, 0x7f1000be

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static clearDrafts(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_drafts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    return-void
.end method

.method public static colorCodeEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    const v0, 0x7f1000c2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static colorCodeOpacity(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const v0, 0x7f1000c3

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->getInt(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static customTabsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 176
    const v0, 0x7f1000cb

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static deleteDraft(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentId"    # Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_drafts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "draft_%1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 262
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    return-void
.end method

.method public static externalBrowserEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    const v0, 0x7f1000d0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static get(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 348
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method static get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 353
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method static get(Landroid/content/Context;IZ)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Z

    .line 324
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    return v0
.end method

.method public static getCommentDisplayOption(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    const v0, 0x7f1000c6

    const v1, 0x7f1000ca

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommentMaxLines(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const v0, 0x7f1000f3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "maxLinesString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "maxLines":I
    :goto_0
    if-gez v1, :cond_1

    .line 207
    const v1, 0x7fffffff

    .line 209
    :cond_1
    return v1
.end method

.method public static getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    const v0, 0x7f10011c

    const v1, 0x7f10011e

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "pref":Ljava/lang/String;
    const v1, 0x7f10011f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-object v1

    .line 133
    :cond_0
    const v1, 0x7f100120

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Readability:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-object v1

    .line 136
    :cond_1
    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Article:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-object v1
.end method

.method public static getDraft(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentId"    # Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_drafts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "draft_%1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 256
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method private static getFloatFromString(Landroid/content/Context;IF)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 334
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "floatValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return p2
.end method

.method private static getInt(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 329
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 329
    return v0
.end method

.method public static getLaunchScreen(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 234
    const v0, 0x7f1000dc

    const v1, 0x7f1000e6

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineHeight(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    const v0, 0x7f1000eb

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->getFloatFromString(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method public static getListSwipePreferences(Landroid/content/Context;)[Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 302
    const v0, 0x7f1000ef

    const v1, 0x7f100162

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "left":Ljava/lang/String;
    const v1, 0x7f1000f1

    const v2, 0x7f100164

    invoke-static {p0, v1, v2}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "right":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->parseSwipeAction(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->parseSwipeAction(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    return-object v2
.end method

.method public static getPopularRange(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    const-string v0, "last_24h"

    const v1, 0x7f10010e

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadabilityLineHeight(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 217
    const v0, 0x7f100110

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->getFloatFromString(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method public static getUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    const v0, 0x7f100127

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static highlightUpdatedEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    const v0, 0x7f1000d5

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isAutoExpand(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayOption"    # Ljava/lang/String;

    .line 185
    nop

    .line 186
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLaunchScreenLast(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 238
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getLaunchScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isListItemCardView(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    const v0, 0x7f1000ed

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isReleaseNotesSeen(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 274
    sget-object v0, Lio/github/hidroh/materialistic/Preferences;->sReleaseNotesSeen:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 282
    :goto_0
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 283
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->setReleaseNotesSeen(Landroid/content/Context;)V

    goto :goto_1

    .line 285
    :cond_0
    const v2, 0x7f1000db

    invoke-static {p0, v2, v1}, Lio/github/hidroh/materialistic/Preferences;->getInt(Landroid/content/Context;II)I

    move-result v2

    const/16 v3, 0x4d

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lio/github/hidroh/materialistic/Preferences;->sReleaseNotesSeen:Ljava/lang/Boolean;

    .line 288
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    sget-object v0, Lio/github/hidroh/materialistic/Preferences;->sReleaseNotesSeen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSinglePage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayOption"    # Ljava/lang/String;

    .line 180
    nop

    .line 181
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSortByRecent(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    const v0, 0x7f100118

    const v1, 0x7f100115

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    return v0
.end method

.method public static migrate(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 100
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lio/github/hidroh/materialistic/Preferences;->PREF_MIGRATION:[Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 101
    .local v5, "pref":Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;
    invoke-virtual {v5, p0, v0}, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->isChanged(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    iget v6, v5, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->newKey:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->newValue:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    :cond_0
    invoke-virtual {v5, p0, v0}, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->hasOldValue(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    iget v6, v5, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldKey:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    .end local v5    # "pref":Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public static multiWindowEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    const v2, 0x7f1000f5

    invoke-static {p0, v2, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static navigationEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 168
    const v0, 0x7f1000fc

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static navigationVibrationEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 172
    const v0, 0x7f1000ff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static parseSwipeAction(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 316
    :try_start_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->valueOf(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    return-object v1
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 308
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    return-void
.end method

.method public static saveDraft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "draft"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_drafts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "draft_%1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 249
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void
.end method

.method private static set(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lio/github/hidroh/materialistic/Preferences;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method static set(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .line 377
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 381
    return-void
.end method

.method private static set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 369
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    return-void
.end method

.method private static setInt(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 358
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    return-void
.end method

.method public static setPopularRange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "range"    # Ljava/lang/String;

    .line 195
    const v0, 0x7f10010e

    invoke-static {p0, v0, p1}, Lio/github/hidroh/materialistic/Preferences;->set(Landroid/content/Context;ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public static setReleaseNotesSeen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 292
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/Preferences;->sReleaseNotesSeen:Ljava/lang/Boolean;

    .line 293
    const v0, 0x7f1000db

    const/16 v1, 0x4d

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->setInt(Landroid/content/Context;II)V

    .line 294
    return-void
.end method

.method public static setSortByRecent(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byRecent"    # Z

    .line 123
    if-eqz p1, :cond_0

    const v0, 0x7f100118

    goto :goto_0

    :cond_0
    const v0, 0x7f100117

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100115

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->set(Landroid/content/Context;ILjava/lang/String;)V

    .line 125
    return-void
.end method

.method public static setUsername(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .line 229
    const v0, 0x7f100127

    invoke-static {p0, v0, p1}, Lio/github/hidroh/materialistic/Preferences;->set(Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public static shouldLazyLoad(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const v0, 0x7f1000e7

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static smoothScrollEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    const v0, 0x7f100119

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static sync(Landroidx/preference/PreferenceManager;)V
    .locals 3
    .param p0, "preferenceManager"    # Landroidx/preference/PreferenceManager;

    .line 74
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 75
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0, v2}, Lio/github/hidroh/materialistic/Preferences;->sync(Landroidx/preference/PreferenceManager;Ljava/lang/String;)V

    .line 77
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private static sync(Landroidx/preference/PreferenceManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "preferenceManager"    # Landroidx/preference/PreferenceManager;
    .param p1, "key"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 82
    .local v0, "pref":Landroidx/preference/Preference;
    instance-of v1, v0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 83
    move-object v1, v0

    check-cast v1, Landroidx/preference/ListPreference;

    .line 84
    .local v1, "listPref":Landroidx/preference/ListPreference;
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    .end local v1    # "listPref":Landroidx/preference/ListPreference;
    :cond_0
    return-void
.end method

.method public static threadIndicatorEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    const v0, 0x7f100125

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method
