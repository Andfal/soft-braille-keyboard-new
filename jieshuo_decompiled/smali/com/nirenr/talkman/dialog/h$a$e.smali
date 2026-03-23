.class Lcom/nirenr/talkman/dialog/h$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;


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

.field final synthetic c:Lcom/nirenr/talkman/dialog/h$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$a$e;->c:Lcom/nirenr/talkman/dialog/h$a;

    iput p2, p0, Lcom/nirenr/talkman/dialog/h$a$e;->a:I

    iput p3, p0, Lcom/nirenr/talkman/dialog/h$a$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h$a$e;->c:Lcom/nirenr/talkman/dialog/h$a;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/h$a;->a:Lcom/nirenr/talkman/dialog/h;

    iget-object v0, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iget v1, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v2, p0, Lcom/nirenr/talkman/dialog/h$a$e;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget p2, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v2, p0, Lcom/nirenr/talkman/dialog/h$a$e;->b:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/nirenr/talkman/dialog/h;->g(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;II)V

    return-void
.end method
