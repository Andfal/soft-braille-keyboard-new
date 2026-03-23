.class public final Ld3/d$c;
.super Lm3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/d;-><init>(Ly2/OkHttpClient;Ly2/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic m:Ld3/d;


# direct methods
.method constructor <init>(Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld3/d$c;->m:Ld3/d;

    invoke-direct {p0}, Lm3/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected x()V
    .locals 1

    iget-object v0, p0, Ld3/d$c;->m:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->cancel()V

    return-void
.end method
