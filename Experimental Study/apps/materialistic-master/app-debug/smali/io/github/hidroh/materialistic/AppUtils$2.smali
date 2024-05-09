.class final Lio/github/hidroh/materialistic/AppUtils$2;
.super Ljava/util/ArrayList;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/AppUtils;->makeSendIntentChooser(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lio/github/hidroh/materialistic/AppUtils$2;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lio/github/hidroh/materialistic/AppUtils$2;->val$data:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
