.class public interface abstract Ly2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/b$a;
    }
.end annotation


# static fields
.field public static final a:Ly2/b;

.field public static final b:Ly2/b;

.field public static final c:Ly2/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly2/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/b$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/b;->c:Ly2/b$a;

    new-instance v0, Ly2/b$a$a;

    invoke-direct {v0}, Ly2/b$a$a;-><init>()V

    sput-object v0, Ly2/b;->a:Ly2/b;

    new-instance v0, La3/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, La3/b;-><init>(Ly2/r;ILt2/d;)V

    sput-object v0, Ly2/b;->b:Ly2/b;

    return-void
.end method


# virtual methods
.method public abstract a(Ly2/d0;Ly2/Response;)Ly2/Request;
.end method
