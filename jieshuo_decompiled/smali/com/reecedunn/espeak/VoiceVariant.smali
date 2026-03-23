.class public Lcom/reecedunn/espeak/VoiceVariant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FEMALE:Ljava/lang/String; = "female"

.field public static final MALE:Ljava/lang/String; = "male"

.field private static final mVariantPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final age:I

.field public final gender:I

.field public final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/reecedunn/espeak/VoiceVariant;->mVariantPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "male"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    goto :goto_1

    :cond_0
    const-string v0, "female"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput p2, p0, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    return-void
.end method

.method public static parseVoiceVariant(Ljava/lang/String;)Lcom/reecedunn/espeak/VoiceVariant;
    .locals 4

    sget-object v0, Lcom/reecedunn/espeak/VoiceVariant;->mVariantPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, p0, v1

    const-string v1, "young"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/reecedunn/espeak/VoiceVariant;

    aget-object p0, p0, v2

    invoke-direct {v1, p0, v0}, Lcom/reecedunn/espeak/VoiceVariant;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/reecedunn/espeak/VoiceVariant;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/reecedunn/espeak/VoiceVariant;

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    iget v3, p0, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    if-ne v0, v3, :cond_1

    iget p1, p1, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    iget v0, p0, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v3, p1, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget v0, p1, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    iget v3, p0, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    if-ne v0, v3, :cond_3

    iget p1, p1, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    iget v0, p0, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "male"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "female"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-young"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-old"

    goto :goto_1

    :cond_3
    return-object v0
.end method
