.class public Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/SpeechSynthesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameter"
.end annotation


# instance fields
.field private final id:I

.field private final max:I

.field private final min:I

.field final synthetic this$0:Lcom/reecedunn/espeak/SpeechSynthesis;

.field private final unitType:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;


# direct methods
.method private constructor <init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->this$0:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->id:I

    iput p3, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->min:I

    iput p4, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->max:I

    iput-object p5, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->unitType:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue()I
    .locals 3

    iget v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->id:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    iget-object v1, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->this$0:Lcom/reecedunn/espeak/SpeechSynthesis;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/reecedunn/espeak/SpeechSynthesis;->a(Lcom/reecedunn/espeak/SpeechSynthesis;II)I

    move-result v0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->max:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->min:I

    return v0
.end method

.method public getUnitType()Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->unitType:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    return-object v0
.end method

.method public getValue()I
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->this$0:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget v1, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->id:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/reecedunn/espeak/SpeechSynthesis;->a(Lcom/reecedunn/espeak/SpeechSynthesis;II)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->this$0:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget v1, p0, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->id:I

    invoke-static {v0, v1, p1}, Lcom/reecedunn/espeak/SpeechSynthesis;->b(Lcom/reecedunn/espeak/SpeechSynthesis;II)Z

    return-void
.end method

.method public setValue(II)V
    .locals 0

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(I)V

    return-void
.end method
