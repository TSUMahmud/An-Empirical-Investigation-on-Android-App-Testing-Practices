.class public Lio/github/hidroh/materialistic/appwidget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field static final ACTION_REFRESH_WIDGET:Ljava/lang/String; = "io.github.hidroh.materialistic.ACTION_REFRESH_WIDGET"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .line 63
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "widgetHelper":Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 65
    .local v3, "appWidgetId":I
    invoke-virtual {v0, v3}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->remove(I)V

    .line 64
    .end local v3    # "appWidgetId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.github.hidroh.materialistic.ACTION_REFRESH_WIDGET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "appWidgetId":I
    new-instance v1, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->refresh(I)V

    .line 40
    .end local v0    # "appWidgetId":I
    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const-string v0, "appWidgetIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 42
    .local v0, "appWidgetIds":[I
    if-eqz v0, :cond_1

    .line 43
    new-instance v2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v2, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "widgetHelper":Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 45
    .local v4, "appWidgetId":I
    invoke-virtual {v2, v4}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->configure(I)V

    .line 44
    .end local v4    # "appWidgetId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "appWidgetIds":[I
    .end local v2    # "widgetHelper":Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
    :cond_1
    goto :goto_1

    .line 49
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :goto_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .line 55
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "widgetHelper":Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p3, v2

    .line 57
    .local v3, "appWidgetId":I
    invoke-virtual {v0, v3}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->update(I)V

    .line 56
    .end local v3    # "appWidgetId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
