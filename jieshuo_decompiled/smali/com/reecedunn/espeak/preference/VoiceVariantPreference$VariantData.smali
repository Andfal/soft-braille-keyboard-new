.class Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/preference/VoiceVariantPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VariantData"
.end annotation


# instance fields
.field private final arg:Ljava/lang/Object;

.field private final name:I

.field final synthetic this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

.field private final variant:Lcom/reecedunn/espeak/VoiceVariant;


# direct methods
.method protected constructor <init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->name:I

    iput-object p3, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->arg:Ljava/lang/Object;

    invoke-static {p4}, Lcom/reecedunn/espeak/VoiceVariant;->parseVoiceVariant(Ljava/lang/String;)Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object p1

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->variant:Lcom/reecedunn/espeak/VoiceVariant;

    return-void
.end method

.method protected constructor <init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->arg:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVariant()Lcom/reecedunn/espeak/VoiceVariant;
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->variant:Lcom/reecedunn/espeak/VoiceVariant;

    return-object v0
.end method
