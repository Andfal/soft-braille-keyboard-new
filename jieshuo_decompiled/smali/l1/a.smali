.class public Ll1/a;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm1/a;"
    }
.end annotation


# instance fields
.field private a:Lt0/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm1/a;-><init>()V

    new-instance v0, Lt0/b$a;

    invoke-direct {v0}, Lt0/b$a;-><init>()V

    iput-object v0, p0, Ll1/a;->a:Lt0/b$a;

    return-void
.end method


# virtual methods
.method public c()Lt0/b$a;
    .locals 1

    iget-object v0, p0, Ll1/a;->a:Lt0/b$a;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Ll1/a;->a:Lt0/b$a;

    invoke-virtual {v0, p1}, Ll1/c;->d(I)V

    return-void
.end method
