.class public Landroidx/browser/customtabs/CustomTabsCallback;
.super Ljava/lang/Object;
.source "CustomTabsCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 101
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "relation"    # I
    .param p2, "requestedOrigin"    # Landroid/net/Uri;
    .param p3, "result"    # Z
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 115
    return-void
.end method
