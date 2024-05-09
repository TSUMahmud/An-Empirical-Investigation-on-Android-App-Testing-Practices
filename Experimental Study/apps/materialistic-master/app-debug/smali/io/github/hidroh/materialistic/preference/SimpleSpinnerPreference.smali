.class public Lio/github/hidroh/materialistic/preference/SimpleSpinnerPreference;
.super Lio/github/hidroh/materialistic/preference/SpinnerPreference;
.source "SimpleSpinnerPreference.java"


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/preference/SimpleSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/SimpleSpinnerPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method


# virtual methods
.method protected bindDropDownView(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 50
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method protected createDropDownView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/SimpleSpinnerPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
