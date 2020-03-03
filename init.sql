-- 'CASCADE' ensures any dependencies like pgcrypto are
-- also installed.
CREATE EXTENSION IF NOT EXISTS pgjwt CASCADE;
