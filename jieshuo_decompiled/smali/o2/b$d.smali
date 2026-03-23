.class final Lo2/b$d;
.super Lo2/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo2/b<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private b:I

.field private final c:Lo2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lo2/b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/b<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo2/b;-><init>()V

    iput-object p1, p0, Lo2/b$d;->c:Lo2/b;

    iput p2, p0, Lo2/b$d;->d:I

    sget-object v0, Lo2/b;->a:Lo2/b$a;

    invoke-virtual {p1}, Lo2/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lo2/b$a;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lo2/b$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lo2/b$d;->b:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lo2/b;->a:Lo2/b$a;

    iget v1, p0, Lo2/b$d;->b:I

    invoke-virtual {v0, p1, v1}, Lo2/b$a;->a(II)V

    iget-object v0, p0, Lo2/b$d;->c:Lo2/b;

    iget v1, p0, Lo2/b$d;->d:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lo2/b;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
