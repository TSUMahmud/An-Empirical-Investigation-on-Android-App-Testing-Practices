.class abstract Lio/github/hidroh/materialistic/BaseListFragment;
.super Lio/github/hidroh/materialistic/BaseFragment;
.source "BaseListFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "state:adapter"


# instance fields
.field mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseFragment;-><init>()V

    .line 41
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    return-void
.end method

.method public static synthetic lambda$eR-eQRimePOyPeZusJn8WAHWRWQ(Lio/github/hidroh/materialistic/BaseListFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListFragment;->onPreferenceChanged(IZ)V

    return-void
.end method

.method private onPreferenceChanged(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 148
    if-eqz p2, :cond_0

    .line 149
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 150
    :cond_0
    const v0, 0x7f1000ed

    if-ne p1, v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->isListItemCardView(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setCardViewEnabled(Z)V

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method private showPreferences()V
    .locals 4

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_TITLE:Ljava/lang/String;

    const v2, 0x7f100096

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_SUMMARY:Ljava/lang/String;

    const v2, 0x7f10013a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_XML_PREFERENCES:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v1, v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void

    :array_0
    .array-data 4
        0x7f130008
        0x7f130009
    .end array-data
.end method


# virtual methods
.method protected createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 95
    const v0, 0x7f0d000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    return-void
.end method

.method protected abstract getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v0

    const-string v1, "state:adapter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->isListItemCardView(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setCardViewEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setCustomTabsDelegate(Lio/github/hidroh/materialistic/CustomTabsDelegate;)V

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    new-instance v0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    .line 91
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$BaseListFragment$eR-eQRimePOyPeZusJn8WAHWRWQ;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$BaseListFragment$eR-eQRimePOyPeZusJn8WAHWRWQ;-><init>(Lio/github/hidroh/materialistic/BaseListFragment;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p1, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 50
    return-void

    :array_0
    .array-data 4
        0x7f1000d3
        0x7f100121
        0x7f1000ed
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 56
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 127
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseFragment;->onDetach()V

    .line 128
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900af

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->showPreferences()V

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "state:adapter"

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->saveState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    .local v0, "verticalMargin":I
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    .local v1, "horizontalMargin":I
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 67
    .local v2, "divider":I
    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lio/github/hidroh/materialistic/BaseListFragment$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lio/github/hidroh/materialistic/BaseListFragment$1;-><init>(Lio/github/hidroh/materialistic/BaseListFragment;III)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    return-void
.end method

.method public scrollToNext()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public scrollToPrevious()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 1

    .line 134
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToTop()V

    .line 135
    return-void
.end method
