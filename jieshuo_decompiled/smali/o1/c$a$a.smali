.class Lo1/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/c$a;->a()Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo1/c$a;


# direct methods
.method constructor <init>(Lo1/c$a;I)V
    .locals 0

    iput-object p1, p0, Lo1/c$a$a;->b:Lo1/c$a;

    iput p2, p0, Lo1/c$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lo1/c$a$a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo1/c$a$a;->b:Lo1/c$a;

    iget-object v0, v0, Lo1/c$a;->a:Lo1/c;

    invoke-static {v0}, Lo1/c;->g(Lo1/c;)Li1/a;

    move-result-object v0

    iget-object v1, p0, Lo1/c$a$a;->b:Lo1/c$a;

    iget-object v1, v1, Lo1/c$a;->a:Lo1/c;

    invoke-static {v1}, Lo1/c;->a(Lo1/c;)I

    move-result v1

    iget-object v2, p0, Lo1/c$a$a;->b:Lo1/c$a;

    iget-object v2, v2, Lo1/c$a;->a:Lo1/c;

    invoke-static {v2}, Lo1/c;->d(Lo1/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Li1/a;->a(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete database code=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadStatistics"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
