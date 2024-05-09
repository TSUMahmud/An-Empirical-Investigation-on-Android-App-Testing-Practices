.class Lio/github/hidroh/materialistic/ActionViewResolver;
.super Ljava/lang/Object;
.source "ActionViewResolver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
