.class Lcom/nirenr/talkman/dialog/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/h;->j(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/dialog/h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$b;->c:Lcom/nirenr/talkman/dialog/h;

    iput p2, p0, Lcom/nirenr/talkman/dialog/h$b;->a:I

    iput p3, p0, Lcom/nirenr/talkman/dialog/h$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h$b;->c:Lcom/nirenr/talkman/dialog/h;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/h;->a(Lcom/nirenr/talkman/dialog/h;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/nirenr/talkman/dialog/h$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/nirenr/talkman/dialog/h$b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[%d,%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h$b;->c:Lcom/nirenr/talkman/dialog/h;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/h;->f(Lcom/nirenr/talkman/dialog/h;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h$b;->c:Lcom/nirenr/talkman/dialog/h;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/h;->a(Lcom/nirenr/talkman/dialog/h;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
