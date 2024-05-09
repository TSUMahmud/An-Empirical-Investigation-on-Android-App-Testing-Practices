.class final Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;
.super Ljava/lang/Object;
.source "ReleaseNotesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/ReleaseNotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/ReleaseNotesActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ReleaseNotesActivity;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;->this$0:Lio/github/hidroh/materialistic/ReleaseNotesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "$noName_0"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;->this$0:Lio/github/hidroh/materialistic/ReleaseNotesActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->openPlayStore(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;->this$0:Lio/github/hidroh/materialistic/ReleaseNotesActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/ReleaseNotesActivity;->finish()V

    .line 37
    return-void
.end method
