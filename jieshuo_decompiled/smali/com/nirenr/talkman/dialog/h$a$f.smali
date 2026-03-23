.class Lcom/nirenr/talkman/dialog/h$a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/h$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/nirenr/talkman/dialog/VirtualScreen;

.field final synthetic e:Lcom/nirenr/talkman/dialog/h$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h$a;IIILcom/nirenr/talkman/dialog/VirtualScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$a$f;->e:Lcom/nirenr/talkman/dialog/h$a;

    iput p2, p0, Lcom/nirenr/talkman/dialog/h$a$f;->a:I

    iput p3, p0, Lcom/nirenr/talkman/dialog/h$a$f;->b:I

    iput p4, p0, Lcom/nirenr/talkman/dialog/h$a$f;->c:I

    iput-object p5, p0, Lcom/nirenr/talkman/dialog/h$a$f;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, 0x320

    new-array v0, v0, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x28

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v2, 0x14

    add-int/2addr v4, v3

    new-instance v12, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v13, v3, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%d,%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/nirenr/talkman/dialog/h$a$f;->a:I

    mul-int v7, v9, v3

    iget v10, p0, Lcom/nirenr/talkman/dialog/h$a$f;->b:I

    mul-int v8, v10, v2

    iget v11, p0, Lcom/nirenr/talkman/dialog/h$a$f;->c:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v12, v0, v4

    move v3, v13

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h$a$f;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h$a$f;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V

    return-void
.end method
