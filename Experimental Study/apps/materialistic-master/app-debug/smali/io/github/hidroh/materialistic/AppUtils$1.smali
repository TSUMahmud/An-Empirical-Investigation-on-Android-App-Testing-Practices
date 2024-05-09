.class final Lio/github/hidroh/materialistic/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 143
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 146
    .local v3, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 148
    .local v4, "y":I
    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    .line 149
    .local v5, "widget":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    .line 150
    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v4, v6

    .line 152
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v3, v6

    .line 153
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v4, v6

    .line 155
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 156
    .local v6, "layout":Landroid/text/Layout;
    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 157
    .local v7, "line":I
    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 159
    .local v8, "off":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v9

    .line 160
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v9

    const-class v10, Landroid/text/style/ClickableSpan;

    .line 161
    invoke-interface {v9, v8, v8, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ClickableSpan;

    .line 163
    .local v9, "links":[Landroid/text/style/ClickableSpan;
    array-length v10, v9

    if-eqz v10, :cond_3

    .line 164
    if-ne v0, v1, :cond_2

    .line 165
    aget-object v10, v9, v2

    instance-of v10, v10, Landroid/text/style/URLSpan;

    if-eqz v10, :cond_1

    .line 166
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    aget-object v2, v9, v2

    check-cast v2, Landroid/text/style/URLSpan;

    .line 167
    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 166
    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v11}, Lio/github/hidroh/materialistic/AppUtils;->openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V

    goto :goto_0

    .line 169
    :cond_1
    aget-object v2, v9, v2

    invoke-virtual {v2, v5}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 172
    :cond_2
    :goto_0
    return v1

    .line 175
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "widget":Landroid/widget/TextView;
    .end local v6    # "layout":Landroid/text/Layout;
    .end local v7    # "line":I
    .end local v8    # "off":I
    .end local v9    # "links":[Landroid/text/style/ClickableSpan;
    :cond_3
    return v2
.end method
