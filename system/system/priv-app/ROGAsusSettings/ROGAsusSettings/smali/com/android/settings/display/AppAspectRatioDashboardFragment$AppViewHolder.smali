.class Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppAspectRatioDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppViewHolder"
.end annotation


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mAppName:Landroid/widget/TextView;

.field private final mFullscreen:Landroid/widget/Switch;

.field private final mSummary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mSummary:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mFullscreen:Landroid/widget/Switch;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/widget/ThemeUtils;->tintSwitchColor(Landroid/content/Context;Landroid/widget/Switch;)V

    const/4 p0, 0x0

    .line 191
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setClickable(Z)V

    return-void
.end method

.method static newView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->preference_app:I

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020018

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->preference_widget_primary_switch:I

    const/4 v2, 0x1

    .line 205
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 208
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method isFullscreen()Z
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mFullscreen:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0
.end method

.method setEnabled(Z)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mFullscreen:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 259
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method setFullscreen(Z)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mFullscreen:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setSummary(I)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
