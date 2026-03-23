.class Lz/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Lz/b;

.field final synthetic b:Lz/a;


# direct methods
.method public constructor <init>(Lz/a;)V
    .locals 0

    iput-object p1, p0, Lz/a$b;->b:Lz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lz/b;->a:Lz/b;

    iput-object p1, p0, Lz/a$b;->a:Lz/b;

    return-void
.end method


# virtual methods
.method public a()Lz/b;
    .locals 1

    iget-object v0, p0, Lz/a$b;->a:Lz/b;

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    sget-object v0, Lz/a$a;->a:[I

    iget-object v1, p0, Lz/a$b;->a:Lz/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    sget-object p1, Lz/b;->c:Lz/b;

    iput-object p1, p0, Lz/a$b;->a:Lz/b;

    iget-object p1, p0, Lz/a$b;->b:Lz/a;

    iget-object p1, p1, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lz/a$b;->b:Lz/a;

    iget-object p1, p1, Lz/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_2

    :cond_3
    sget-object p1, Lz/b;->d:Lz/b;

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    sget-object p1, Lz/b;->b:Lz/b;

    iput-object p1, p0, Lz/a$b;->a:Lz/b;

    iget-object p1, p0, Lz/a$b;->b:Lz/a;

    iget-object p1, p1, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_5
    :goto_0
    sget-object p1, Lz/b;->e:Lz/b;

    :goto_1
    iput-object p1, p0, Lz/a$b;->a:Lz/b;

    iget-object p1, p0, Lz/a$b;->b:Lz/a;

    iget-object p1, p1, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz/a$b;->a:Lz/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
