.class public abstract Lio/github/hidroh/materialistic/preference/SpinnerPreference;
.super Landroidx/preference/Preference;
.source "SpinnerPreference.java"


# instance fields
.field mEntries:[Ljava/lang/String;

.field mEntryValues:[Ljava/lang/String;

.field mSelection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    .line 43
    iput v0, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mSelection:I

    .line 52
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 53
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lio/github/hidroh/materialistic/preference/SpinnerPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/preference/SpinnerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    sget-object v0, Lio/github/hidroh/materialistic/R$styleable;->SpinnerPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 59
    .local v2, "entriesResId":I
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 62
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 63
    .local v1, "valuesResId":I
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0
    .param p0, "spinner"    # Landroid/widget/Spinner;
    .param p1, "v"    # Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method


# virtual methods
.method protected abstract bindDropDownView(ILandroid/view/View;)V
.end method

.method protected abstract createDropDownView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 88
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 89
    const v0, 0x7f09010b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 90
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lio/github/hidroh/materialistic/preference/-$$Lambda$SpinnerPreference$o_MZkHX7-eqj-CMTd9tB5l8OMrc;

    invoke-direct {v2, v0}, Lio/github/hidroh/materialistic/preference/-$$Lambda$SpinnerPreference$o_MZkHX7-eqj-CMTd9tB5l8OMrc;-><init>(Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/preference/SpinnerPreference$1;-><init>(Lio/github/hidroh/materialistic/preference/SpinnerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    iget v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 152
    new-instance v1, Lio/github/hidroh/materialistic/preference/SpinnerPreference$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/preference/SpinnerPreference$2;-><init>(Lio/github/hidroh/materialistic/preference/SpinnerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 4
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 76
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mEntryValues:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 79
    aget-object v2, v2, v1

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iput v1, p0, Lio/github/hidroh/materialistic/preference/SpinnerPreference;->mSelection:I

    .line 81
    goto :goto_2

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method
