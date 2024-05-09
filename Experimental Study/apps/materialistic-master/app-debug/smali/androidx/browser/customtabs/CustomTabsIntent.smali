.class public final Landroidx/browser/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startAnimationBundle"    # Landroid/os/Bundle;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 269
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 270
    return-void
.end method
