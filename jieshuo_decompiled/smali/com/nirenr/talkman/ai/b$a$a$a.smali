.class Lcom/nirenr/talkman/ai/b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/b$a$a;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic b:Lcom/nirenr/talkman/ai/b$a$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/b$a$a;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/b$a$a$a;->b:Lcom/nirenr/talkman/ai/b$a$a;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/b$a$a$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/ai/b$a$a$a;->b:Lcom/nirenr/talkman/ai/b$a$a;

    iget-object v0, v0, Lcom/nirenr/talkman/ai/b$a$a;->a:Lcom/nirenr/talkman/ai/b$a;

    iget-object v1, v0, Lcom/nirenr/talkman/ai/b$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lcom/nirenr/talkman/ai/b$a$a$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v3, v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v0, v0, Lcom/nirenr/talkman/ai/b$a;->b:I

    div-int/lit8 v0, v0, 0x4

    iget v2, v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
