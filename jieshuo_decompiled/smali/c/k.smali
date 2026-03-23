.class public Lc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private a:Lh/f1;


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lc/k;->a:Lh/f1;

    invoke-virtual {v0}, Lh/f1;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lc/k;->a:Lh/f1;

    invoke-virtual {v0}, Lh/f1;->flush()V

    return-void
.end method
