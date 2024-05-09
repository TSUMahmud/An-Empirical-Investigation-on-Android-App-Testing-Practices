.class public Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "WidgetConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;
    }
.end annotation


# instance fields
.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->mAppWidgetId:I

    return-void
.end method

.method private configure()V
    .locals 3

    .line 66
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->configure(I)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->configure()V

    return-void
.end method


# virtual methods
.method protected isDialogTheme()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->mAppWidgetId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 45
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 46
    if-nez p1, :cond_1

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "appWidgetId"

    iget v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090155

    const-class v3, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    const-class v4, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 57
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/appwidget/-$$Lambda$WidgetConfigActivity$f6Dgk7dxHtKdEO21SERCGCsO02w;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/appwidget/-$$Lambda$WidgetConfigActivity$f6Dgk7dxHtKdEO21SERCGCsO02w;-><init>(Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    return-void
.end method
