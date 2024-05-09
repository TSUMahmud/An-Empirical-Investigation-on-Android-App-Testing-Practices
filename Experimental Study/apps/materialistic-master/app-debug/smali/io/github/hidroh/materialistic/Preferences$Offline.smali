.class public Lio/github/hidroh/materialistic/Preferences$Offline;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Offline"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentConnectionEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 510
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->isOnWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isArticleEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 500
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f100101

    .line 501
    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 500
    :goto_0
    return v1
.end method

.method public static isCommentsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 495
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f100103

    .line 496
    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 495
    :goto_0
    return v1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 491
    const v0, 0x7f100112

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 514
    const v0, 0x7f100109

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadabilityEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 505
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f10010c

    .line 506
    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 505
    :goto_0
    return v1
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 518
    const v0, 0x7f1000ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "wifiValue":Ljava/lang/String;
    const v1, 0x7f100105

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->get(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
