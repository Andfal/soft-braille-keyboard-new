.class final Lz2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c;->e(Ly2/s;)Ly2/s$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly2/s;


# direct methods
.method constructor <init>(Ly2/s;)V
    .locals 0

    iput-object p1, p0, Lz2/c$a;->a:Ly2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ly2/Call;)Ly2/s;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/c$a;->a:Ly2/s;

    return-object p1
.end method
