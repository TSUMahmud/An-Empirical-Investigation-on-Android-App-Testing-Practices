.class Lio/github/hidroh/materialistic/SearchActivity$1;
.super Landroid/provider/SearchRecentSuggestions;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/SearchActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/SearchActivity;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/SearchActivity;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I

    .line 46
    iput-object p1, p0, Lio/github/hidroh/materialistic/SearchActivity$1;->this$0:Lio/github/hidroh/materialistic/SearchActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lio/github/hidroh/materialistic/SearchActivity$1;->this$0:Lio/github/hidroh/materialistic/SearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 50
    invoke-super {p0, p1, p2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
