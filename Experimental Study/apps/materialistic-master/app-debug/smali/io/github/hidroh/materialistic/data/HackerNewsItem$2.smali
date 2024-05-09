.class Lio/github/hidroh/materialistic/data/HackerNewsItem$2;
.super Landroid/text/style/ClickableSpan;
.source "HackerNewsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/HackerNewsItem;->createAuthorSpannable(Z)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/HackerNewsItem;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 351
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem$2;->this$0:Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem$2;->this$0:Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 355
    invoke-virtual {v2}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getBy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/hidroh/materialistic/AppUtils;->createUserUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 360
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 362
    return-void
.end method
