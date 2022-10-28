.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->$r8$lambda$W7Q25unlqF0RPLb1CMdpU0iG8rM(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
