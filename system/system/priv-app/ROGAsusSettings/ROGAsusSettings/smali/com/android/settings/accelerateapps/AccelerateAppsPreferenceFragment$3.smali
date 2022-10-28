.class Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;
.super Landroid/os/AsyncTask;
.source "AccelerateAppsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x32

    if-ge p1, v0, :cond_1

    const-wide/16 v0, 0x14

    .line 349
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 353
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    iget-boolean v0, v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mIsResumed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string p1, "AccelerateAppsPreferenceFragment"

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$900(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to loadPref , e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$1000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$1100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to content visible , e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
