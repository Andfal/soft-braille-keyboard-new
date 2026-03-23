.class public Lcom/nirenr/talkman/ai/OcrResult$OcrItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/ai/OcrResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OcrItem"
.end annotation


# instance fields
.field public confidence:I

.field public height:I

.field public size:I

.field public text:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    iget v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iget-object v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iget v0, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    iget p1, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->confidence:I

    iput p1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->confidence:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    iput-object p1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iput p2, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iput p3, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iput p4, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iput p5, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iput p6, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OcrItem{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
