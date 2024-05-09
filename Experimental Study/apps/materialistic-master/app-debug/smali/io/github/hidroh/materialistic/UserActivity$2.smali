.class Lio/github/hidroh/materialistic/UserActivity$2;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/UserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/UserActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/UserActivity;

    .line 119
    iput-object p1, p0, Lio/github/hidroh/materialistic/UserActivity$2;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 132
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$2;->this$0:Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/UserActivity;->scrollToTop()V

    .line 133
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 123
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 128
    return-void
.end method
