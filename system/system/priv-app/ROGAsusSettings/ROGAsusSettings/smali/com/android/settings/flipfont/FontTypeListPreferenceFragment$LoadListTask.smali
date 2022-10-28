.class Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontTypeListPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 187
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$300(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$302(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$300(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 201
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->startFontList()V

    .line 203
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$400(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask$1;-><init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    invoke-static {}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$500()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FlipFont"

    const-string p1, "dismiss/show ListLoad() - catch (Exception ex)"

    .line 217
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$200(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->privState:Landroid/os/Bundle;

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->access$300(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
