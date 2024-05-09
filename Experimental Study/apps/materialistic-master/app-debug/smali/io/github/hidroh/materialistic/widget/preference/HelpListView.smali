.class public Lio/github/hidroh/materialistic/widget/preference/HelpListView;
.super Landroid/widget/ScrollView;
.source "HelpListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method private makeAsteriskSpan()Landroid/text/Spannable;
    .locals 5

    .line 63
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "*"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v0, "sb":Landroid/text/SpannableString;
    new-instance v1, Lio/github/hidroh/materialistic/widget/AsteriskSpan;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/widget/AsteriskSpan;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .line 44
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 45
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/preference/HelpListView;->makeAsteriskSpan()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "+5"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 50
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 52
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 53
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f06004b

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 52
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    const v2, 0x7f090092

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 56
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "comments":Landroid/widget/TextView;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "46"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/preference/HelpListView;->makeAsteriskSpan()Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
