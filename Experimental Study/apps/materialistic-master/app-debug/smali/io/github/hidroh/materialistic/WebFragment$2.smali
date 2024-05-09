.class Lio/github/hidroh/materialistic/WebFragment$2;
.super Ljava/lang/Object;
.source "WebFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/WebFragment;->reloadUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/WebFragment;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 319
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment$2;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 322
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$2;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-static {v0}, Lio/github/hidroh/materialistic/WebFragment;->access$000(Lio/github/hidroh/materialistic/WebFragment;)V

    .line 323
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$2;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/WebFragment;->access$100(Lio/github/hidroh/materialistic/WebFragment;I)V

    .line 324
    return-void
.end method

.method public onLoad()V
    .locals 2

    .line 328
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$2;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/WebFragment;->access$100(Lio/github/hidroh/materialistic/WebFragment;I)V

    .line 329
    return-void
.end method
