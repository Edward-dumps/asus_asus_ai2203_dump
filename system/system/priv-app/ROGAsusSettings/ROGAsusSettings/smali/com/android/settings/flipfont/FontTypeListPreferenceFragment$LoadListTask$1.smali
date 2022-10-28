.class Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;
.super Ljava/lang/Object;
.source "FontTypeListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$400(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$400(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;->this$1:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$400(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/widget/ListView;

    move-result-object p0

    invoke-static {v2, p0, v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintListViewSingleChoiceColor(Landroid/content/Context;Landroid/widget/ListView;II)V

    :cond_0
    return-void
.end method
