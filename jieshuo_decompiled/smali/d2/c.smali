.class public Ld2/c;
.super Ld2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ld2/b;-><init>()V

    sget-object v0, Ld2/b$a;->a:Ld2/b$a;

    const v1, -0x2f2d2d

    invoke-virtual {p0, v0, v1}, Ld2/b;->d(Ld2/b$a;I)V

    sget-object v0, Ld2/b$a;->b:Ld2/b$a;

    const v1, -0xfbfbfc

    invoke-virtual {p0, v0, v1}, Ld2/b;->d(Ld2/b$a;I)V

    sget-object v0, Ld2/b$a;->i:Ld2/b$a;

    const v1, -0x9f9fa0

    invoke-virtual {p0, v0, v1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method
