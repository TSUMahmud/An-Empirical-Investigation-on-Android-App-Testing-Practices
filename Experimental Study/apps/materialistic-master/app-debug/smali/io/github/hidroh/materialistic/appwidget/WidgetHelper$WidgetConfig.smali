.class Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;
.super Ljava/lang/Object;
.source "WidgetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetConfig"
.end annotation


# instance fields
.field final customQuery:Z

.field final destination:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final isLightTheme:Z

.field final section:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field final widgetLayout:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;
    .param p4, "isLightTheme"    # Z
    .param p5, "widgetLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 221
    .local p1, "destination":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->destination:Ljava/lang/Class;

    .line 223
    iput-object p2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->title:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->section:Ljava/lang/String;

    .line 225
    iput-boolean p4, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->isLightTheme:Z

    .line 226
    iput p5, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->widgetLayout:I

    .line 227
    const-class v0, Lio/github/hidroh/materialistic/SearchActivity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->customQuery:Z

    .line 228
    return-void
.end method

.method static createWidgetConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "isLightTheme":Z
    const v1, 0x7f100135

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const v1, 0x7f0c002c

    goto :goto_0

    .line 194
    :cond_0
    const v1, 0x7f100136

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const v1, 0x7f0c002d

    .line 196
    .local v1, "widgetLayout":I
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "widgetLayout":I
    :cond_1
    const v1, 0x7f0c002b

    .line 202
    .restart local v1    # "widgetLayout":I
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    move-object v2, p3

    .line 204
    .local v2, "title":Ljava/lang/String;
    move-object p2, p3

    .line 205
    const-class v3, Lio/github/hidroh/materialistic/SearchActivity;

    move-object v9, p2

    move-object v8, v2

    move-object p2, v3

    goto :goto_1

    .line 206
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    const v2, 0x7f100132

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    const v2, 0x7f100176

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "title":Ljava/lang/String;
    const-class v3, Lio/github/hidroh/materialistic/BestActivity;

    move-object v9, p2

    move-object v8, v2

    move-object p2, v3

    goto :goto_1

    .line 209
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    const v2, 0x7f100133

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    const v2, 0x7f10017b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "title":Ljava/lang/String;
    const-class v3, Lio/github/hidroh/materialistic/ListActivity;

    move-object v9, p2

    move-object v8, v2

    move-object p2, v3

    goto :goto_1

    .line 214
    .end local v2    # "title":Ljava/lang/String;
    :cond_4
    const v2, 0x7f10017d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "title":Ljava/lang/String;
    const-class v3, Lio/github/hidroh/materialistic/NewActivity;

    move-object v9, p2

    move-object v8, v2

    move-object p2, v3

    .line 217
    .end local v2    # "title":Ljava/lang/String;
    .local v8, "title":Ljava/lang/String;
    .local v9, "section":Ljava/lang/String;
    .local p2, "destination":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :goto_1
    new-instance v10, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;

    move-object v2, v10

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    move v6, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v10
.end method
