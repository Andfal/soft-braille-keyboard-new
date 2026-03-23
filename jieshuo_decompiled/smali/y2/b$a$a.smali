.class final Ly2/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly2/d0;Ly2/Response;)Ly2/Request;
    .locals 0

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
