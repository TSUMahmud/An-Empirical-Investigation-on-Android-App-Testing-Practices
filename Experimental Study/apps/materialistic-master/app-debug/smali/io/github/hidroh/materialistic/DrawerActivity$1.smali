.class Lio/github/hidroh/materialistic/DrawerActivity$1;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "DrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/DrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/DrawerActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/DrawerActivity;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I

    .line 70
    iput-object p1, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawer:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    iget-object v1, v0, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigation:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 75
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v2

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    iget-object v1, v1, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigationExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    iput-object v2, v1, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigationExtras:Landroid/os/Bundle;

    .line 81
    :cond_0
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity$1;->this$0:Lio/github/hidroh/materialistic/DrawerActivity;

    iput-object v2, v1, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigation:Ljava/lang/Class;

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
