.class public final synthetic Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/pm/CrossProfileApps;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/pm/CrossProfileApps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/CrossProfileApps;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/CrossProfileApps;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->$r8$lambda$TlxeQsBE_MwUV4dANuDEOL32mlE(Landroid/content/Context;Landroid/content/pm/CrossProfileApps;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
